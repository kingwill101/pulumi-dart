// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualGatewaySpecListenerTlCertificateSd {
  final pulumi.Input<String> secretName;

  /// Creates a new [GetVirtualGatewaySpecListenerTlCertificateSd].
  /// [secretName] Required.
  GetVirtualGatewaySpecListenerTlCertificateSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
    };
  }

  factory GetVirtualGatewaySpecListenerTlCertificateSd.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerTlCertificateSd(
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
    );
  }
}

