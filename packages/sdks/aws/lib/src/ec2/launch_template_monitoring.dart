// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateMonitoring {
  /// If `true`, the launched EC2 instance will have detailed monitoring enabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [LaunchTemplateMonitoring].
  /// [enabled] If `true`, the launched EC2 instance will have detailed monitoring enabled.
  LaunchTemplateMonitoring({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory LaunchTemplateMonitoring.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateMonitoring(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

