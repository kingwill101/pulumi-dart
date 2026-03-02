// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Application gateway client authentication configuration.
class ApplicationGatewayClientAuthConfigurationResponse {
  /// Verify client certificate issuer name on the application gateway.
  final pulumi.Input<bool>? verifyClientCertIssuerDN;
  /// Verify client certificate revocation status.
  final pulumi.Input<String>? verifyClientRevocation;

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
      verifyClientCertIssuerDN: map['verifyClientCertIssuerDN'] == null ? null : (map['verifyClientCertIssuerDN']! as bool).input(),
      verifyClientRevocation: map['verifyClientRevocation'] == null ? null : (map['verifyClientRevocation']! as String).input(),
    );
  }
}

