// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSigningProfileSigningMaterial {
  /// ARN of the certificate used for signing.
  final pulumi.Input<String> certificateArn;

  /// Creates a new [GetSigningProfileSigningMaterial].
  /// [certificateArn] ARN of the certificate used for signing.
  GetSigningProfileSigningMaterial({required this.certificateArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'certificateArn': certificateArn};
  }

  factory GetSigningProfileSigningMaterial.fromMap(Map<String, dynamic> map) {
    return GetSigningProfileSigningMaterial(
      certificateArn: pulumi.Input.fromValue(map['certificateArn'] as String),
    );
  }
}
