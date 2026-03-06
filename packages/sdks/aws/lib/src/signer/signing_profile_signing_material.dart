// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SigningProfileSigningMaterial {
  /// The Amazon Resource Name (ARN) of the certificates that is used to sign your code.
  final pulumi.Input<String> certificateArn;

  /// Creates a new [SigningProfileSigningMaterial].
  /// [certificateArn] The Amazon Resource Name (ARN) of the certificates that is used to sign your code.
  const SigningProfileSigningMaterial({
    required this.certificateArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': certificateArn,
    };
  }

  factory SigningProfileSigningMaterial.fromMap(Map<String, dynamic> map) {
    return SigningProfileSigningMaterial(
      certificateArn: pulumi.Input.fromValue(map['certificateArn'] as String),
    );
  }
}

