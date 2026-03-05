exports.handler = async (event) => {
  const crypto = require("crypto");
  const len = Number(event?.len ?? 10);
  return crypto.randomBytes(len / 2).toString("hex");
};
