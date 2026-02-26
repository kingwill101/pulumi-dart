// ignore_for_file: unused_element, unnecessary_cast

class IntegrationTlsConfig2 {
  /// If you specify a server name, API Gateway uses it to verify the hostname on the integration's certificate. The server name is also included in the TLS handshake to support Server Name Indication (SNI) or virtual hosting.
  final String? serverNameToVerify;

  IntegrationTlsConfig2({
    this.serverNameToVerify,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final serverNameToVerifyValue = serverNameToVerify;
    if (serverNameToVerifyValue != null) {
      map['serverNameToVerify'] = serverNameToVerifyValue;
    }
    return map;
  }

  factory IntegrationTlsConfig2.fromMap(Map<String, dynamic> map) {
    return IntegrationTlsConfig2(
      serverNameToVerify: map['serverNameToVerify'] == null
          ? null
          : map['serverNameToVerify'] as String,
    );
  }
}
