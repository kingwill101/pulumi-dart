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
  const GetMonitorGroupInstancesInstanceInstance({
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
      category: pulumi.Input.fromValue(map['category'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
    );
  }
}

