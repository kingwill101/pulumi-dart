// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Auto pause properties
class AutoPausePropertiesResponse {
  final pulumi.Input<int>? delayInMinutes;
  final pulumi.Input<bool>? enabled;

  /// Creates a new [AutoPausePropertiesResponse].
  /// [delayInMinutes] Optional.
  /// [enabled] Optional.
  AutoPausePropertiesResponse({
    this.delayInMinutes,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delayInMinutes': ?delayInMinutes,
      'enabled': ?enabled,
    };
  }

  factory AutoPausePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AutoPausePropertiesResponse(
      delayInMinutes: map['delayInMinutes'] == null ? null : (map['delayInMinutes']! as int).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

