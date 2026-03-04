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
    required this.resourceGroupName,
    required this.scalingPlanName,
    required this.scalingPlanScheduleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'scalingPlanName': scalingPlanName,
      'scalingPlanScheduleName': scalingPlanScheduleName,
    };
  }

  factory GetScalingPlanPooledScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GetScalingPlanPooledScheduleArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      scalingPlanName: pulumi.Input.fromValue(map['scalingPlanName'] as String),
      scalingPlanScheduleName: pulumi.Input.fromValue(
        map['scalingPlanScheduleName'] as String,
      ),
    );
  }
}
