exports.handler = async (event) => {
  console.log("DELETE handler", JSON.stringify(event));
  return {
    statusCode: 200,
    body: JSON.stringify({ message: "DELETE successful" }),
  };
};
