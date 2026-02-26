// ignore_for_file: unused_element, unnecessary_cast

class ToolsetOpenApiToolsetApiAuthenticationApiKeyConfig {
  /// The name of the SecretManager secret version resource storing the API key.
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  /// Note: You should grant `roles/secretmanager.secretAccessor` role to the CES
  /// service agent
  /// `service-@gcp-sa-ces.iam.gserviceaccount.com`.
  final String apiKeySecretVersion;

  /// The parameter name or the header name of the API key.
  /// E.g., If the API request is "https://example.com/act?X-Api-Key=", "X-Api-Key" would be the parameter name.
  final String keyName;

  /// Key location in the request.
  /// Possible values:
  /// HEADER
  /// QUERY_STRING
  final String requestLocation;

  ToolsetOpenApiToolsetApiAuthenticationApiKeyConfig({
    required this.apiKeySecretVersion,
    required this.keyName,
    required this.requestLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiKeySecretVersion'] = apiKeySecretVersion;
    map['keyName'] = keyName;
    map['requestLocation'] = requestLocation;
    return map;
  }

  factory ToolsetOpenApiToolsetApiAuthenticationApiKeyConfig.fromMap(
      Map<String, dynamic> map) {
    return ToolsetOpenApiToolsetApiAuthenticationApiKeyConfig(
      apiKeySecretVersion: map['apiKeySecretVersion'] as String,
      keyName: map['keyName'] as String,
      requestLocation: map['requestLocation'] as String,
    );
  }
}
