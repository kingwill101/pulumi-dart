// ignore_for_file: unused_element, unnecessary_cast


/// Application gateway client authentication configuration.
class ApplicationGatewayClientAuthConfiguration {
  /// Verify client certificate issuer name on the application gateway.
  final bool? verifyClientCertIssuerDN;
  /// Verify client certificate revocation status.
  final String? verifyClientRevocation;

  /// Creates a new [ApplicationGatewayClientAuthConfiguration].
  /// [verifyClientCertIssuerDN] Verify client certificate issuer name on the application gateway.
  /// [verifyClientRevocation] Verify client certificate revocation status.
  ApplicationGatewayClientAuthConfiguration({
    this.verifyClientCertIssuerDN,
    this.verifyClientRevocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'verifyClientCertIssuerDN': ?verifyClientCertIssuerDN,
      'verifyClientRevocation': ?verifyClientRevocation,
    };
  }

  factory ApplicationGatewayClientAuthConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayClientAuthConfiguration(
      verifyClientCertIssuerDN: map['verifyClientCertIssuerDN'] == null ? null : map['verifyClientCertIssuerDN'] as bool,
      verifyClientRevocation: map['verifyClientRevocation'] == null ? null : map['verifyClientRevocation'] as String,
    );
  }
}

