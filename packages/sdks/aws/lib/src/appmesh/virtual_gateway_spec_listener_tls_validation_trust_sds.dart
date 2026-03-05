// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualGatewaySpecListenerTlsValidationTrustSds {
  /// Name of the secret for a virtual gateway's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  final pulumi.Input<String> secretName;

  /// Creates a new [VirtualGatewaySpecListenerTlsValidationTrustSds].
  /// [secretName] Name of the secret for a virtual gateway's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  VirtualGatewaySpecListenerTlsValidationTrustSds({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
    };
  }

  factory VirtualGatewaySpecListenerTlsValidationTrustSds.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerTlsValidationTrustSds(
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
    );
  }
}

