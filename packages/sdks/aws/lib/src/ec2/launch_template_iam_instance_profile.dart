// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateIamInstanceProfile {
  /// The Amazon Resource Name (ARN) of the instance profile. Conflicts with `name`.
  final pulumi.Input<String>? arn;
  /// The name of the instance profile.
  final pulumi.Input<String>? name;

  /// Creates a new [LaunchTemplateIamInstanceProfile].
  /// [arn] The Amazon Resource Name (ARN) of the instance profile. Conflicts with `name`.
  /// [name] The name of the instance profile.
  LaunchTemplateIamInstanceProfile({
    this.arn,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
    };
  }

  factory LaunchTemplateIamInstanceProfile.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateIamInstanceProfile(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
    );
  }
}

