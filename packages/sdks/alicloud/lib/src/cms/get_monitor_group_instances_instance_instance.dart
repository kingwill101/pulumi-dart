// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMonitorGroupInstancesInstanceInstance {
  final pulumi.Input<String> category;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> instanceName;
  final pulumi.Input<String> regionId;

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
      category: (map['category'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      instanceName: (map['instanceName'] as String).input(),
      regionId: (map['regionId'] as String).input(),
    );
  }
}

