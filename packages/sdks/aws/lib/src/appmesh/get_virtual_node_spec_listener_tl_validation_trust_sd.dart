// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerTlValidationTrustSd {
  /// Name of the secret for a virtual node's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  final pulumi.Input<String> secretName;

  /// Creates a new [GetVirtualNodeSpecListenerTlValidationTrustSd].
  /// [secretName] Name of the secret for a virtual node's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  const GetVirtualNodeSpecListenerTlValidationTrustSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
    };
  }

  factory GetVirtualNodeSpecListenerTlValidationTrustSd.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTlValidationTrustSd(
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
    );
  }
}
