// ignore_for_file: unused_element, unnecessary_cast

class IntegrationTlsConfig {
  /// If you specify a server name, API Gateway uses it to verify the hostname on the integration's certificate. The server name is also included in the TLS handshake to support Server Name Indication (SNI) or virtual hosting.
  final String? serverNameToVerify;

  /// Creates a new [IntegrationTlsConfig].
  /// [serverNameToVerify] If you specify a server name, API Gateway uses it to verify the hostname on the integration's certificate. The server name is also included in the TLS handshake to support Server Name Indication (SNI) or virtual hosting.
  IntegrationTlsConfig({this.serverNameToVerify});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'serverNameToVerify': ?serverNameToVerify};
  }

  factory IntegrationTlsConfig.fromMap(Map<String, dynamic> map) {
    return IntegrationTlsConfig(
      serverNameToVerify: map['serverNameToVerify'] == null
          ? null
          : map['serverNameToVerify'] as String,
    );
  }
}
