// ignore_for_file: unused_element, unnecessary_cast


class MonitorGroupInstancesInstance {
  /// The category of instance.
  final String category;
  /// The id of instance.
  final String instanceId;
  /// The name of instance.
  final String instanceName;
  /// The region id of instance.
  final String regionId;

  /// Creates a new [MonitorGroupInstancesInstance].
  /// [category] The category of instance.
  /// [instanceId] The id of instance.
  /// [instanceName] The name of instance.
  /// [regionId] The region id of instance.
  MonitorGroupInstancesInstance({
    required this.category,
    required this.instanceId,
    required this.instanceName,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'instanceId': instanceId,
      'instanceName': instanceName,
      'regionId': regionId,
    };
  }

  factory MonitorGroupInstancesInstance.fromMap(Map<String, dynamic> map) {
    return MonitorGroupInstancesInstance(
      category: map['category'] as String,
      instanceId: map['instanceId'] as String,
      instanceName: map['instanceName'] as String,
      regionId: map['regionId'] as String,
    );
  }
}

