exports.handler = async (event) => {
  console.log("GET handler", JSON.stringify(event));
  return {
    statusCode: 200,
    body: JSON.stringify({ message: "GET successful" }),
  };
};
