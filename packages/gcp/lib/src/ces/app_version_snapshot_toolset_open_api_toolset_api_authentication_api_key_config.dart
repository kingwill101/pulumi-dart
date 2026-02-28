// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationApiKeyConfig {
  /// (Output)
  /// The name of the SecretManager secret version resource storing the API key.
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  /// Note: You should grant `roles/secretmanager.secretAccessor` role to the CES
  /// service agent
  /// `service-@gcp-sa-ces.iam.gserviceaccount.com`.
  final String? apiKeySecretVersion;

  /// (Output)
  /// The parameter name or the header name of the API key.
  /// E.g., If the API request is "https://example.com/act?X-Api-Key=", "X-Api-Key" would be the parameter name.
  final String? keyName;

  /// (Output)
  /// Key location in the request.
  /// Possible values:
  /// HEADER
  /// QUERY_STRING
  final String? requestLocation;

  /// Creates a new [AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationApiKeyConfig].
  /// [apiKeySecretVersion] (Output)
  /// [keyName] (Output)
  /// [requestLocation] (Output)
  AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationApiKeyConfig({
    this.apiKeySecretVersion,
    this.keyName,
    this.requestLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiKeySecretVersionValue = apiKeySecretVersion;
    if (apiKeySecretVersionValue != null) {
      map['apiKeySecretVersion'] = apiKeySecretVersionValue;
    }
    final keyNameValue = keyName;
    if (keyNameValue != null) {
      map['keyName'] = keyNameValue;
    }
    final requestLocationValue = requestLocation;
    if (requestLocationValue != null) {
      map['requestLocation'] = requestLocationValue;
    }
    return map;
  }

  factory AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationApiKeyConfig.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationApiKeyConfig(
      apiKeySecretVersion: map['apiKeySecretVersion'] == null
          ? null
          : map['apiKeySecretVersion'] as String,
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      requestLocation: map['requestLocation'] == null
          ? null
          : map['requestLocation'] as String,
    );
  }
}
