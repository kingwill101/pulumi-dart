// ignore_for_file: unused_element, unnecessary_cast


/// Application gateway client authentication configuration.
class ApplicationGatewayClientAuthConfigurationResponse {
  /// Verify client certificate issuer name on the application gateway.
  final bool? verifyClientCertIssuerDN;
  /// Verify client certificate revocation status.
  final String? verifyClientRevocation;

  /// Creates a new [ApplicationGatewayClientAuthConfigurationResponse].
  /// [verifyClientCertIssuerDN] Verify client certificate issuer name on the application gateway.
  /// [verifyClientRevocation] Verify client certificate revocation status.
  ApplicationGatewayClientAuthConfigurationResponse({
    this.verifyClientCertIssuerDN,
    this.verifyClientRevocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'verifyClientCertIssuerDN': ?verifyClientCertIssuerDN,
      'verifyClientRevocation': ?verifyClientRevocation,
    };
  }

  factory ApplicationGatewayClientAuthConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayClientAuthConfigurationResponse(
      verifyClientCertIssuerDN: map['verifyClientCertIssuerDN'] == null ? null : map['verifyClientCertIssuerDN'] as bool,
      verifyClientRevocation: map['verifyClientRevocation'] == null ? null : map['verifyClientRevocation'] as String,
    );
  }
}

