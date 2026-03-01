const fs = require("fs");

exports.handler = async (event) => {
  try {
    const filename = event.pathParameters?.filename || "";
    const filePath = `/mnt/storage/${filename}`;
    const body = event.body || "";
    const data = Buffer.from(body, event.isBase64Encoded ? "base64" : "utf8");
    fs.writeFileSync(filePath, data);
    return {
      statusCode: 200,
      body: "",
    };
  } catch (err) {
    return {
      statusCode: 500,
      body: "",
    };
  }
};
