// ignore_for_file: unused_element, unnecessary_cast


/// Internal use only.
class DeploymentCapacitySettings {
  /// The designated capacity.
  final int? designatedCapacity;
  /// The priority of this capacity setting.
  final int? priority;

  /// Creates a new [DeploymentCapacitySettings].
  /// [designatedCapacity] The designated capacity.
  /// [priority] The priority of this capacity setting.
  DeploymentCapacitySettings({
    this.designatedCapacity,
    this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'designatedCapacity': ?designatedCapacity,
      'priority': ?priority,
    };
  }

  factory DeploymentCapacitySettings.fromMap(Map<String, dynamic> map) {
    return DeploymentCapacitySettings(
      designatedCapacity: map['designatedCapacity'] == null ? null : map['designatedCapacity'] as int,
      priority: map['priority'] == null ? null : map['priority'] as int,
    );
  }
}

