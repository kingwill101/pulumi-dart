exports.handler = async (event) => {
  try {
    const authHeader =
      event?.headers?.Authorization || event?.headers?.authorization || "";
    if (!authHeader.startsWith("Bearer ")) {
      return {
        statusCode: 401,
        body: JSON.stringify({ error: "Missing or invalid Authorization header" }),
      };
    }

    const body = event?.body || "{}";
    const requestBody = JSON.parse(body);

    return {
      statusCode: 200,
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        message: "External secrets adapter responding successfully!",
        requestEcho: requestBody,
        timestamp: new Date().toISOString(),
      }),
    };
  } catch (error) {
    return {
      statusCode: 500,
      body: JSON.stringify({ error: error?.message || "Internal server error" }),
    };
  }
};
