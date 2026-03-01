// ignore_for_file: unused_element, unnecessary_cast


class GetMonitorGroupInstancesInstanceInstance {
  final String category;
  final String instanceId;
  final String instanceName;
  final String regionId;

  /// Creates a new [GetMonitorGroupInstancesInstanceInstance].
  /// [category] Required.
  /// [instanceId] Required.
  /// [instanceName] Required.
  /// [regionId] Required.
  GetMonitorGroupInstancesInstanceInstance({
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

  factory GetMonitorGroupInstancesInstanceInstance.fromMap(Map<String, dynamic> map) {
    return GetMonitorGroupInstancesInstanceInstance(
      category: map['category'] as String,
      instanceId: map['instanceId'] as String,
      instanceName: map['instanceName'] as String,
      regionId: map['regionId'] as String,
    );
  }
}

