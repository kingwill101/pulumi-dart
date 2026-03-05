// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualGatewaySpecListenerTlsCertificateSds {
  /// Name of the secret for a virtual gateway's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  final pulumi.Input<String> secretName;

  /// Creates a new [VirtualGatewaySpecListenerTlsCertificateSds].
  /// [secretName] Name of the secret for a virtual gateway's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  VirtualGatewaySpecListenerTlsCertificateSds({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
    };
  }

  factory VirtualGatewaySpecListenerTlsCertificateSds.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerTlsCertificateSds(
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
    );
  }
}

