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
      category: (map['category'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      instanceName: (map['instanceName'] as String).input(),
      regionId: (map['regionId'] as String).input(),
    );
  }
}

