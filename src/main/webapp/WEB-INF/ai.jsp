<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>AI 너무 좋아!</title>
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background: rgba(255, 255, 255, 0.1);
            padding: 30px;
            border-radius: 15px;
            backdrop-filter: blur(8px);
            box-shadow: 0 4px 20px rgba(0,0,0,0.3);
            width: 400px;
            text-align: center;
        }
        h1 {
            font-size: 1.8rem;
            margin-bottom: 20px;
        }
        p {
            font-size: 1rem;
            margin: 10px 0;
        }
        .label {
            font-weight: bold;
            color: #ffd700;
        }
        form {
            margin-top: 20px;
        }
        input[name="question"] {
            padding: 10px;
            width: 80%;
            border: none;
            border-radius: 25px;
            outline: none;
            font-size: 1rem;
        }
        button {
            background: #ff6f61;
            border: none;
            padding: 10px 20px;
            margin-top: 15px;
            border-radius: 25px;
            color: white;
            font-size: 1rem;
            cursor: pointer;
            box-shadow: 0 4px 10px rgba(255,111,97,0.6);
            transition: background 0.3s;
        }
        button:hover {
            background: #ff3b2e;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>🤖 AI 너무 좋아!</h1>
        <p><span class="label">질문</span> : <%= request.getAttribute("question") != null ? request.getAttribute("question") : "아직 질문이 없습니다." %></p>
        <p><span class="label">답변</span> : <%= request.getAttribute("data") != null ? request.getAttribute("data") : "아직 답변이 없습니다." %></p>

        <form method="post">
            <input name="question" placeholder="AI에게 질문하세요!">
            <br>
            <button>질문하기</button>
        </form>
    </div>
</body>
</html>