// ignore_for_file: unused_element, unnecessary_cast

class CxToolOpenApiSpecAuthenticationApiKeyConfig {
  /// Optional. The API key. If the `secretVersionForApiKey`` field is set, this field will be ignored.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? apiKey;

  /// The parameter name or the header name of the API key.
  /// E.g., If the API request is "https://example.com/act?X-Api-Key=", "X-Api-Key" would be the parameter name.
  final String keyName;

  /// Key location in the request.
  /// See [RequestLocation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.tools#requestlocation) for valid values.
  final String requestLocation;

  /// Optional. The name of the SecretManager secret version resource storing the API key.
  /// If this field is set, the apiKey field will be ignored.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}
  final String? secretVersionForApiKey;

  CxToolOpenApiSpecAuthenticationApiKeyConfig({
    this.apiKey,
    required this.keyName,
    required this.requestLocation,
    this.secretVersionForApiKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiKeyValue = apiKey;
    if (apiKeyValue != null) {
      map['apiKey'] = apiKeyValue;
    }
    map['keyName'] = keyName;
    map['requestLocation'] = requestLocation;
    final secretVersionForApiKeyValue = secretVersionForApiKey;
    if (secretVersionForApiKeyValue != null) {
      map['secretVersionForApiKey'] = secretVersionForApiKeyValue;
    }
    return map;
  }

  factory CxToolOpenApiSpecAuthenticationApiKeyConfig.fromMap(
      Map<String, dynamic> map) {
    return CxToolOpenApiSpecAuthenticationApiKeyConfig(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
      keyName: map['keyName'] as String,
      requestLocation: map['requestLocation'] as String,
      secretVersionForApiKey: map['secretVersionForApiKey'] == null
          ? null
          : map['secretVersionForApiKey'] as String,
    );
  }
}
