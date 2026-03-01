const https = require("https");
const { URL } = require("url");

exports.handler = async function (event) {
  const webhook = process.env.SLACK_WEBHOOK_URL;
  if (!webhook) {
    console.error("SLACK_WEBHOOK_URL is not configured.");
    return { statusCode: 500 };
  }

  const username =
    process.env.SLACK_WEBHOOK_USERNAME || "Console Change Monitor";
  const text =
    process.env.SLACK_MESSAGE_TEXT ||
    ":warning: Somebody made a change in the console!";

  const detail = event && event.detail ? event.detail : {};
  const user = detail.userIdentity ? detail.userIdentity.arn : "unknown";
  const action = detail.eventName || "unknown";
  const region = event.region || "unknown";
  const service = detail.eventSource || "unknown";

  const message = {
    username,
    text: `${text}\nService: ${service}\nAction: ${action}\nRegion: ${region}\nActor: ${user}`,
  };

  const body = JSON.stringify(message);
  const url = new URL(webhook);

  await new Promise((resolve, reject) => {
    const req = https.request(
      {
        protocol: url.protocol,
        hostname: url.hostname,
        port: url.port || 443,
        path: `${url.pathname}${url.search}`,
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          "Content-Length": Buffer.byteLength(body),
        },
      },
      (res) => {
        if (res.statusCode && res.statusCode >= 200 && res.statusCode < 300) {
          resolve();
          return;
        }
        reject(new Error(`Slack webhook failed with status ${res.statusCode}`));
      }
    );
    req.on("error", reject);
    req.write(body);
    req.end();
  });

  return { statusCode: 200 };
};
