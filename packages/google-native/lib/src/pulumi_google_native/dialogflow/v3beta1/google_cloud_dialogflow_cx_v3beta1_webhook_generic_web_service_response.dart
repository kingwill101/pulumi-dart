// ignore_for_file: unused_element, unnecessary_cast

/// Represents configuration for a generic web service.
class GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceResponse {
  /// Optional. Specifies a list of allowed custom CA certificates (in DER format) for HTTPS verification. This overrides the default SSL trust store. If this is empty or unspecified, Dialogflow will use Google's default trust store to verify certificates. N.B. Make sure the HTTPS server certificates are signed with "subject alt name". For instance a certificate can be self-signed using the following command, ``` openssl x509 -req -days 200 -in example.com.csr \ -signkey example.com.key \ -out example.com.crt \ -extfile <(printf "\nsubjectAltName='DNS:www.example.com'") ```
  final List<String> allowedCaCerts;

  /// Optional. HTTP method for the flexible webhook calls. Standard webhook always uses POST.
  final String httpMethod;

  /// Optional. Maps the values extracted from specific fields of the flexible webhook response into session parameters. - Key: session parameter name - Value: field path in the webhook response
  final Map<String, String> parameterMapping;

  /// The password for HTTP Basic authentication.
  final String password;

  /// Optional. Defines a custom JSON object as request body to send to flexible webhook.
  final String requestBody;

  /// The HTTP request headers to send together with webhook requests.
  final Map<String, String> requestHeaders;

  /// The webhook URI for receiving POST requests. It must use https protocol.
  final String uri;

  /// The user name for HTTP Basic authentication.
  final String username;

  /// Optional. Type of the webhook.
  final String webhookType;

  GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceResponse({
    required this.allowedCaCerts,
    required this.httpMethod,
    required this.parameterMapping,
    required this.password,
    required this.requestBody,
    required this.requestHeaders,
    required this.uri,
    required this.username,
    required this.webhookType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedCaCerts'] = allowedCaCerts;
    map['httpMethod'] = httpMethod;
    map['parameterMapping'] = parameterMapping;
    map['password'] = password;
    map['requestBody'] = requestBody;
    map['requestHeaders'] = requestHeaders;
    map['uri'] = uri;
    map['username'] = username;
    map['webhookType'] = webhookType;
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceResponse(
      allowedCaCerts: (map['allowedCaCerts'] as List).cast<String>(),
      httpMethod: map['httpMethod'] as String,
      parameterMapping: (map['parameterMapping'] as Map).cast<String, String>(),
      password: map['password'] as String,
      requestBody: map['requestBody'] as String,
      requestHeaders: (map['requestHeaders'] as Map).cast<String, String>(),
      uri: map['uri'] as String,
      username: map['username'] as String,
      webhookType: map['webhookType'] as String,
    );
  }
}
