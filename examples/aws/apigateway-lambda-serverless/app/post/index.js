exports.handler = async (event) => {
  console.log("POST handler", JSON.stringify(event));
  return {
    statusCode: 200,
    body: JSON.stringify({ message: "POST successful" }),
  };
};
