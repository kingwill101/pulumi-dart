// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_get_scaling_plan_args_doc}
/// Arguments for getScalingPlan.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_get_scaling_plan_args_doc}
class GetScalingPlanArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the scaling plan.
  final pulumi.Input<String> scalingPlanName;

  /// Creates a new [GetScalingPlanArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scalingPlanName] The name of the scaling plan.
  GetScalingPlanArgs({
    required String resourceGroupName,
    required String scalingPlanName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scalingPlanName = pulumi.Input.asInput<String>(scalingPlanName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'scalingPlanName': scalingPlanName,
    };
  }

  factory GetScalingPlanArgs.fromMap(Map<String, dynamic> map) {
    return GetScalingPlanArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      scalingPlanName: map['scalingPlanName'] as String,
    );
  }
}

