// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateIamInstanceProfile {
  final pulumi.Input<String> arn;
  /// Name of the launch template.
  final pulumi.Input<String> name;

  /// Creates a new [GetLaunchTemplateIamInstanceProfile].
  /// [arn] Required.
  /// [name] Name of the launch template.
  GetLaunchTemplateIamInstanceProfile({
    required this.arn,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'name': name,
    };
  }

  factory GetLaunchTemplateIamInstanceProfile.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateIamInstanceProfile(
      arn: (map['arn'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

