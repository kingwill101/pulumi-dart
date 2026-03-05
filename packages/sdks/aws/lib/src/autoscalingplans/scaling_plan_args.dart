// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_plan_application_source.dart';
import 'scaling_plan_scaling_instruction.dart';

/// {@template pulumi_autoscalingplans_scaling_plan_scaling_plan_args_doc}
/// The set of arguments for ScalingPlan.
/// {@endtemplate}
/// {@macro pulumi_autoscalingplans_scaling_plan_scaling_plan_args_doc}
class ScalingPlanArgs {
  /// CloudFormation stack or set of tags. You can create one scaling plan per application source.
  final pulumi.Input<ScalingPlanApplicationSource> applicationSource;
  /// Name of the scaling plan. Names cannot contain vertical bars, colons, or forward slashes.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Scaling instructions. More details can be found in the [AWS Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ScalingInstruction.html).
  final pulumi.Input<List<ScalingPlanScalingInstruction>> scalingInstructions;

  /// Creates a new [ScalingPlanArgs].
  /// [applicationSource] CloudFormation stack or set of tags. You can create one scaling plan per application source.
  /// [name] Name of the scaling plan. Names cannot contain vertical bars, colons, or forward slashes.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scalingInstructions] Scaling instructions. More details can be found in the [AWS Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ScalingInstruction.html).
  ScalingPlanArgs({
    required this.applicationSource,
    this.name,
    this.region,
    required this.scalingInstructions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationSource': pulumi.Input.mapInputValue<ScalingPlanApplicationSource, Map<String, dynamic>>(applicationSource, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'scalingInstructions': pulumi.Input.mapInputValue<List<ScalingPlanScalingInstruction>, List<Map<String, dynamic>>>(scalingInstructions, (value) => pulumi.Input.encodeList<ScalingPlanScalingInstruction, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScalingPlanArgs.fromMap(Map<String, dynamic> map) {
    return ScalingPlanArgs(
      applicationSource: pulumi.Input.fromValue(ScalingPlanApplicationSource.fromMap((map['applicationSource']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scalingInstructions: pulumi.Input.fromValue(pulumi.Input.decodeList<ScalingPlanScalingInstruction>(map['scalingInstructions']!, (value) => ScalingPlanScalingInstruction.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

