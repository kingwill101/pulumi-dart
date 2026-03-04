// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScalingConfigurationCustomPriority {
  /// This parameter takes effect only if you set Scaling Policy to Priority Policy and the instance type specified by CustomPriorities.N.InstanceType is contained in the scaling configuration.
  final pulumi.Input<String>? instanceType;

  /// This parameter takes effect only if you set Scaling Policy to Priority Policy and the vSwitch specified by CustomPriorities.N.VswitchId is included in the vSwitch list of your scaling group.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [ScalingConfigurationCustomPriority].
  /// [instanceType] This parameter takes effect only if you set Scaling Policy to Priority Policy and the instance type specified by CustomPriorities.N.InstanceType is contained in the scaling configuration.
  /// [vswitchId] This parameter takes effect only if you set Scaling Policy to Priority Policy and the vSwitch specified by CustomPriorities.N.VswitchId is included in the vSwitch list of your scaling group.
  ScalingConfigurationCustomPriority({this.instanceType, this.vswitchId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': ?instanceType,
      'vswitchId': ?vswitchId,
    };
  }

  factory ScalingConfigurationCustomPriority.fromMap(Map<String, dynamic> map) {
    return ScalingConfigurationCustomPriority(
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
