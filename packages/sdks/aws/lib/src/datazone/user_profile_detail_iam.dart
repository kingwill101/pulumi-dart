// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserProfileDetailIam {
  final pulumi.Input<String> arn;

  /// Creates a new [UserProfileDetailIam].
  /// [arn] Required.
  UserProfileDetailIam({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
    };
  }

  factory UserProfileDetailIam.fromMap(Map<String, dynamic> map) {
    return UserProfileDetailIam(
      arn: pulumi.Input.fromValue(map['arn'] as String),
    );
  }
}

