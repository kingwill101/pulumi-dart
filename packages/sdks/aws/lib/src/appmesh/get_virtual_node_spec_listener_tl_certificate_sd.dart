// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerTlCertificateSd {
  final pulumi.Input<String> secretName;

  /// Creates a new [GetVirtualNodeSpecListenerTlCertificateSd].
  /// [secretName] Required.
  GetVirtualNodeSpecListenerTlCertificateSd({
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

