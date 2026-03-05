// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerTlCertificateAcm {
  final pulumi.Input<String> certificateArn;

  /// Creates a new [GetVirtualNodeSpecListenerTlCertificateAcm].
  /// [certificateArn] Required.
  GetVirtualNodeSpecListenerTlCertificateAcm({
    required this.certificateArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': certificateArn,
    };
  }

  factory GetVirtualNodeSpecListenerTlCertificateAcm.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTlCertificateAcm(
      certificateArn: pulumi.Input.fromValue(map['certificateArn'] as String),
    );
  }
}

