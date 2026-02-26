// ignore_for_file: unused_element, unnecessary_cast

/// Message contains the transport layer information to verify the proxy server.
class GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfo {
  /// PEM encoded CA certificate associated with the proxy server certificate.
  final String serverCaCertPem;

  /// Optional. PEM encoded CA certificate associated with the certificate used by proxy server for SSL decryption.
  final String? sslDecryptCaCertPem;

  GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfo({
    required this.serverCaCertPem,
    this.sslDecryptCaCertPem,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serverCaCertPem'] = serverCaCertPem;
    final sslDecryptCaCertPemValue = sslDecryptCaCertPem;
    if (sslDecryptCaCertPemValue != null) {
      map['sslDecryptCaCertPem'] = sslDecryptCaCertPemValue;
    }
    return map;
  }

  factory GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfo.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfo(
      serverCaCertPem: map['serverCaCertPem'] as String,
      sslDecryptCaCertPem: map['sslDecryptCaCertPem'] == null
          ? null
          : map['sslDecryptCaCertPem'] as String,
    );
  }
}
