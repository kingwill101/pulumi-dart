// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitorGroupInstancesInstance {
  /// The category of instance.
  final pulumi.Input<String> category;

  /// The id of instance.
  final pulumi.Input<String> instanceId;

  /// The name of instance.
  final pulumi.Input<String> instanceName;

  /// The region id of instance.
  final pulumi.Input<String> regionId;

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
      category: pulumi.Input.fromValue(map['category'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
    );
  }
}
