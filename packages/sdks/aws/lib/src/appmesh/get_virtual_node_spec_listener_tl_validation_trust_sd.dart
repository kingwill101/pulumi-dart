// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerTlValidationTrustSd {
  final pulumi.Input<String> secretName;

  /// Creates a new [GetVirtualNodeSpecListenerTlValidationTrustSd].
  /// [secretName] Required.
  GetVirtualNodeSpecListenerTlValidationTrustSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
    };
  }

  factory GetVirtualNodeSpecListenerTlValidationTrustSd.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTlValidationTrustSd(
      secretName: (map['secretName'] as String).input(),
    );
  }
}

