// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_get_scaling_plan_pooled_schedule_args_doc}
/// Arguments for getScalingPlanPooledSchedule.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_get_scaling_plan_pooled_schedule_args_doc}
class GetScalingPlanPooledScheduleArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the scaling plan.
  final pulumi.Input<String> scalingPlanName;
  /// The name of the ScalingPlanSchedule
  final pulumi.Input<String> scalingPlanScheduleName;

  /// Creates a new [GetScalingPlanPooledScheduleArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scalingPlanName] The name of the scaling plan.
  /// [scalingPlanScheduleName] The name of the ScalingPlanSchedule
  GetScalingPlanPooledScheduleArgs({
    required String resourceGroupName,
    required String scalingPlanName,
    required String scalingPlanScheduleName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scalingPlanName = pulumi.Input.asInput<String>(scalingPlanName),
      scalingPlanScheduleName = pulumi.Input.asInput<String>(scalingPlanScheduleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'scalingPlanName': scalingPlanName,
      'scalingPlanScheduleName': scalingPlanScheduleName,
    };
  }

  factory GetScalingPlanPooledScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GetScalingPlanPooledScheduleArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      scalingPlanName: map['scalingPlanName'] as String,
      scalingPlanScheduleName: map['scalingPlanScheduleName'] as String,
    );
  }
}

