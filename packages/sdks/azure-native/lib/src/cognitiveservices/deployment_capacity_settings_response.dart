// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Internal use only.
class DeploymentCapacitySettingsResponse {
  /// The designated capacity.
  final pulumi.Input<int>? designatedCapacity;

  /// The priority of this capacity setting.
  final pulumi.Input<int>? priority;

  /// Creates a new [DeploymentCapacitySettingsResponse].
  /// [designatedCapacity] The designated capacity.
  /// [priority] The priority of this capacity setting.
  DeploymentCapacitySettingsResponse({this.designatedCapacity, this.priority});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'designatedCapacity': ?designatedCapacity,
      'priority': ?priority,
    };
  }

  factory DeploymentCapacitySettingsResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentCapacitySettingsResponse(
      designatedCapacity: (() {
        final guardedValue = map['designatedCapacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
