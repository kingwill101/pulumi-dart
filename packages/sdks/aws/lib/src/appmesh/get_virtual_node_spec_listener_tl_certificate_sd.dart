// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerTlCertificateSd {
  /// Name of the secret for a virtual node's TLS Secret Discovery Service validation context trust.
  final pulumi.Input<String> secretName;

  /// Creates a new [GetVirtualNodeSpecListenerTlCertificateSd].
  /// [secretName] Name of the secret for a virtual node's TLS Secret Discovery Service validation context trust.
  const GetVirtualNodeSpecListenerTlCertificateSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
    };
  }

  factory GetVirtualNodeSpecListenerTlCertificateSd.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTlCertificateSd(
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
    );
  }
}
