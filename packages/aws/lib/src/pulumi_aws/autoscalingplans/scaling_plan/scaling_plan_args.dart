// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../scaling_plan_application_source/scaling_plan_application_source.dart';
import '../scaling_plan_scaling_instruction/scaling_plan_scaling_instruction.dart';

/// The set of arguments for ScalingPlan.
class ScalingPlanArgs {
  /// CloudFormation stack or set of tags. You can create one scaling plan per application source.
  final pulumi.Input<ScalingPlanApplicationSource> applicationSource;

  /// Name of the scaling plan. Names cannot contain vertical bars, colons, or forward slashes.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Scaling instructions. More details can be found in the [AWS Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ScalingInstruction.html).
  final pulumi.Input<List<ScalingPlanScalingInstruction>> scalingInstructions;

  ScalingPlanArgs({
    required this.applicationSource,
    this.name,
    this.region,
    required this.scalingInstructions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationSource'] = pulumi.Input.mapInputValue<
        ScalingPlanApplicationSource,
        Map<String, dynamic>>(applicationSource, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['scalingInstructions'] = pulumi.Input.mapInputValue<
            List<ScalingPlanScalingInstruction>, List<Map<String, dynamic>>>(
        scalingInstructions,
        (value) => pulumi.Input.encodeList<ScalingPlanScalingInstruction,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory ScalingPlanArgs.fromMap(Map<String, dynamic> map) {
    return ScalingPlanArgs(
      applicationSource: pulumi.Input.asInput<ScalingPlanApplicationSource>(
          map['applicationSource']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scalingInstructions:
          pulumi.Input.asInput<List<ScalingPlanScalingInstruction>>(
              map['scalingInstructions']),
    );
  }
}
