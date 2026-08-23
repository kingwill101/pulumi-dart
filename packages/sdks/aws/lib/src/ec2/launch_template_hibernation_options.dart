// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateHibernationOptions {
  /// If set to `true`, the launched EC2 instance will hibernation enabled.
  final pulumi.Input<bool> configured;

  /// Creates a new [LaunchTemplateHibernationOptions].
  /// [configured] If set to `true`, the launched EC2 instance will hibernation enabled.
  const LaunchTemplateHibernationOptions({
    required this.configured,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configured': configured,
    };
  }

  factory LaunchTemplateHibernationOptions.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateHibernationOptions(
      configured: pulumi.Input.fromValue(map['configured'] as bool),
    );
  }
}
