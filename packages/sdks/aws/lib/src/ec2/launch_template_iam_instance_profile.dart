// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateIamInstanceProfile {
  /// ARN of the instance profile. Conflicts with `name`.
  final pulumi.Input<String?>? arn;
  /// The name of the instance profile.
  final pulumi.Input<String?>? name;

  /// Creates a new [LaunchTemplateIamInstanceProfile].
  /// [arn] ARN of the instance profile. Conflicts with `name`.
  /// [name] The name of the instance profile.
  const LaunchTemplateIamInstanceProfile({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
