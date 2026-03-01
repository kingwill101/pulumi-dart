exports.handler = async function (_event) {
  return {
    statusCode: 200,
    headers: {
      "Content-Type": "text/plain",
    },
    body: "Hello, API Gateway!",
  };
};
