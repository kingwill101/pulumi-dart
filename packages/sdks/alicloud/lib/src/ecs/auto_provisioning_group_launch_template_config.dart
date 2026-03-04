// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoProvisioningGroupLaunchTemplateConfig {
  /// The instance type of the Nth extended configurations of the launch template.
  final pulumi.Input<String>? instanceType;

  /// The maximum price of the instance type specified in the Nth extended configurations of the launch template.
  final pulumi.Input<String> maxPrice;

  /// The priority of the instance type specified in the Nth extended configurations of the launch template. A value of 0 indicates the highest priority.
  final pulumi.Input<String>? priority;

  /// The ID of the VSwitch in the Nth extended configurations of the launch template.
  final pulumi.Input<String> vswitchId;

  /// The weight of the instance type specified in the Nth extended configurations of the launch template.
  final pulumi.Input<String> weightedCapacity;

  /// Creates a new [AutoProvisioningGroupLaunchTemplateConfig].
  /// [instanceType] The instance type of the Nth extended configurations of the launch template.
  /// [maxPrice] The maximum price of the instance type specified in the Nth extended configurations of the launch template.
  /// [priority] The priority of the instance type specified in the Nth extended configurations of the launch template. A value of 0 indicates the highest priority.
  /// [vswitchId] The ID of the VSwitch in the Nth extended configurations of the launch template.
  /// [weightedCapacity] The weight of the instance type specified in the Nth extended configurations of the launch template.
  AutoProvisioningGroupLaunchTemplateConfig({
    this.instanceType,
    required this.maxPrice,
    this.priority,
    required this.vswitchId,
    required this.weightedCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': ?instanceType,
      'maxPrice': maxPrice,
      'priority': ?priority,
      'vswitchId': vswitchId,
      'weightedCapacity': weightedCapacity,
    };
  }

  factory AutoProvisioningGroupLaunchTemplateConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutoProvisioningGroupLaunchTemplateConfig(
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxPrice: pulumi.Input.fromValue(map['maxPrice'] as String),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      weightedCapacity: pulumi.Input.fromValue(
        map['weightedCapacity'] as String,
      ),
    );
  }
}
