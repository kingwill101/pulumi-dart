// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Auto pause properties
class AutoPauseProperties {
  final pulumi.Input<int>? delayInMinutes;
  final pulumi.Input<bool>? enabled;

  /// Creates a new [AutoPauseProperties].
  /// [delayInMinutes] Optional.
  /// [enabled] Optional.
  AutoPauseProperties({
    this.delayInMinutes,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delayInMinutes': ?delayInMinutes,
      'enabled': ?enabled,
    };
  }

  factory AutoPauseProperties.fromMap(Map<String, dynamic> map) {
    return AutoPauseProperties(
      delayInMinutes: map['delayInMinutes'] == null ? null : (map['delayInMinutes']! as int).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

