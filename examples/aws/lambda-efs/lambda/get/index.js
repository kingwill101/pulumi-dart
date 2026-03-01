const fs = require("fs");

exports.handler = async (event) => {
  try {
    const filename = event.pathParameters?.filename || "";
    const filePath = `/mnt/storage/${filename}`;
    const data = fs.readFileSync(filePath);
    return {
      statusCode: 200,
      body: data.toString(),
    };
  } catch (err) {
    return {
      statusCode: 500,
      body: "",
    };
  }
};
