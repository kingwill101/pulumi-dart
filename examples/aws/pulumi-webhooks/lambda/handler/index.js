const crypto = require("crypto");

function decodeBody(event) {
  const body = event.body || "";
  if (event.isBase64Encoded) {
    return Buffer.from(body, "base64").toString("utf8");
  }
  return body;
}

function authenticateRequest(event, body) {
  const sharedSecret = process.env.SHARED_SECRET;
  const signature = event?.headers?.["pulumi-webhook-signature"] ||
    event?.headers?.["Pulumi-Webhook-Signature"] ||
    "";
  if (!sharedSecret || !signature) {
    return null;
  }

  const hmac = crypto
    .createHmac("sha256", sharedSecret)
    .update(Buffer.from(body))
    .digest("hex");

  const ok = crypto.timingSafeEqual(Buffer.from(signature), Buffer.from(hmac));
  if (!ok) {
    return {
      statusCode: 400,
      body: "Unable to authenticate message: Mismatch between signature and HMAC",
    };
  }

  return null;
}

async function postToSlack(webhookUrl, payload) {
  const res = await fetch(webhookUrl, {
    method: "POST",
    headers: { "content-type": "application/json" },
    body: JSON.stringify(payload),
  });
  if (!res.ok) {
    throw new Error(`Slack webhook failed with status ${res.status}`);
  }
}

exports.handler = async (event) => {
  const method = event?.httpMethod || event?.requestContext?.http?.method || "";
  if (method === "GET") {
    return {
      statusCode: 200,
      body: "Pulumi Webhook Responder\n",
    };
  }

  if (method !== "POST") {
    return {
      statusCode: 405,
      body: "Method Not Allowed",
    };
  }

  const rawBody = decodeBody(event);
  const authError = authenticateRequest(event, rawBody);
  if (authError) {
    return authError;
  }

  const webhookKind = event?.headers?.["pulumi-webhook-kind"] ||
    event?.headers?.["Pulumi-Webhook-Kind"] ||
    "unknown";
  let parsedPayload = {};
  try {
    parsedPayload = JSON.parse(rawBody || "{}");
  } catch (_) {
    parsedPayload = { rawBody };
  }

  const fallbackText =
    `Pulumi Cloud Webhook (${webhookKind})\n\`\`\`\n${JSON.stringify(parsedPayload, null, 2)}\n\`\`\``;

  await postToSlack(process.env.SLACK_WEBHOOK, {
    channel: process.env.SLACK_CHANNEL,
    text: fallbackText,
  });

  return {
    statusCode: 200,
    body: `posted to Slack channel ${process.env.SLACK_CHANNEL}\n`,
  };
};
