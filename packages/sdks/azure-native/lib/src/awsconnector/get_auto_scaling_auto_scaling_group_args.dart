// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_auto_scaling_auto_scaling_group_args_doc}
/// Arguments for getAutoScalingAutoScalingGroup.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_auto_scaling_auto_scaling_group_args_doc}
class GetAutoScalingAutoScalingGroupArgs {
  /// Name of AutoScalingAutoScalingGroup
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAutoScalingAutoScalingGroupArgs].
  /// [name] Name of AutoScalingAutoScalingGroup
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAutoScalingAutoScalingGroupArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAutoScalingAutoScalingGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetAutoScalingAutoScalingGroupArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

