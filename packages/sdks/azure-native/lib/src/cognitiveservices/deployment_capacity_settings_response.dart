// ignore_for_file: unused_element, unnecessary_cast


/// Internal use only.
class DeploymentCapacitySettingsResponse {
  /// The designated capacity.
  final int? designatedCapacity;
  /// The priority of this capacity setting.
  final int? priority;

  /// Creates a new [DeploymentCapacitySettingsResponse].
  /// [designatedCapacity] The designated capacity.
  /// [priority] The priority of this capacity setting.
  DeploymentCapacitySettingsResponse({
    this.designatedCapacity,
    this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'designatedCapacity': ?designatedCapacity,
      'priority': ?priority,
    };
  }

  factory DeploymentCapacitySettingsResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentCapacitySettingsResponse(
      designatedCapacity: map['designatedCapacity'] == null ? null : map['designatedCapacity'] as int,
      priority: map['priority'] == null ? null : map['priority'] as int,
    );
  }
}

