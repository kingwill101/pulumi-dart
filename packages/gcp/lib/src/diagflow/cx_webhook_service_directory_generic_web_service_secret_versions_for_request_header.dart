// ignore_for_file: unused_element, unnecessary_cast

class CxWebhookServiceDirectoryGenericWebServiceSecretVersionsForRequestHeader {
  /// The identifier for this object. Format specified above.
  final String key;

  /// The SecretManager secret version resource storing the header value.
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  final String secretVersion;

  /// Creates a new [CxWebhookServiceDirectoryGenericWebServiceSecretVersionsForRequestHeader].
  /// [key] The identifier for this object. Format specified above.
  /// [secretVersion] The SecretManager secret version resource storing the header value.
  CxWebhookServiceDirectoryGenericWebServiceSecretVersionsForRequestHeader({
    required this.key,
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'secretVersion': secretVersion};
  }

  factory CxWebhookServiceDirectoryGenericWebServiceSecretVersionsForRequestHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxWebhookServiceDirectoryGenericWebServiceSecretVersionsForRequestHeader(
      key: map['key'] as String,
      secretVersion: map['secretVersion'] as String,
    );
  }
}
