// ignore_for_file: unused_element, unnecessary_cast

class CxWebhookGenericWebServiceSecretVersionsForRequestHeader {
  /// The identifier for this object. Format specified above.
  final String key;

  /// The SecretManager secret version resource storing the header value.
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  final String secretVersion;

  /// Creates a new [CxWebhookGenericWebServiceSecretVersionsForRequestHeader].
  /// [key] The identifier for this object. Format specified above.
  /// [secretVersion] The SecretManager secret version resource storing the header value.
  CxWebhookGenericWebServiceSecretVersionsForRequestHeader({
    required this.key,
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory CxWebhookGenericWebServiceSecretVersionsForRequestHeader.fromMap(
      Map<String, dynamic> map) {
    return CxWebhookGenericWebServiceSecretVersionsForRequestHeader(
      key: map['key'] as String,
      secretVersion: map['secretVersion'] as String,
    );
  }
}
