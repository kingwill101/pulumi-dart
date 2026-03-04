// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetScalingGroupsGroupLaunchTemplateOverride {
  /// (Available since v1.249.0) The instance type. The instance type that is specified by this parameter overwrites the instance type that is specified in the launch template.
  final pulumi.Input<String> instanceType;

  /// (Available since v1.249.0) The maximum bid price of instance type N that is specified by LaunchTemplateOverride.N.InstanceType. You can specify N instance types by using the Extend Launch Template feature. Valid values of N: 1 to 10.
  final pulumi.Input<double> spotPriceLimit;

  /// (Available since v1.249.0) The weight of the instance type. The value of this parameter indicates the capacity of a single instance of the specified instance type in the scaling group. A greater weight indicates that a smaller number of instances of the specified instance type are required to reach the expected capacity.
  final pulumi.Input<int> weightedCapacity;

  /// Creates a new [GetScalingGroupsGroupLaunchTemplateOverride].
  /// [instanceType] (Available since v1.249.0) The instance type. The instance type that is specified by this parameter overwrites the instance type that is specified in the launch template.
  /// [spotPriceLimit] (Available since v1.249.0) The maximum bid price of instance type N that is specified by LaunchTemplateOverride.N.InstanceType. You can specify N instance types by using the Extend Launch Template feature. Valid values of N: 1 to 10.
  /// [weightedCapacity] (Available since v1.249.0) The weight of the instance type. The value of this parameter indicates the capacity of a single instance of the specified instance type in the scaling group. A greater weight indicates that a smaller number of instances of the specified instance type are required to reach the expected capacity.
  GetScalingGroupsGroupLaunchTemplateOverride({
    required this.instanceType,
    required this.spotPriceLimit,
    required this.weightedCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
      'spotPriceLimit': spotPriceLimit,
      'weightedCapacity': weightedCapacity,
    };
  }

  factory GetScalingGroupsGroupLaunchTemplateOverride.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetScalingGroupsGroupLaunchTemplateOverride(
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      spotPriceLimit: pulumi.Input.fromValue(map['spotPriceLimit'] as double),
      weightedCapacity: pulumi.Input.fromValue(map['weightedCapacity'] as int),
    );
  }
}
