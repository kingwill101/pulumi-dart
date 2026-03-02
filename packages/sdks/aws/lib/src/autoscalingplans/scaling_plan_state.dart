// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_plan_application_source.dart';
import 'scaling_plan_scaling_instruction.dart';

/// Input properties used for looking up and filtering ScalingPlan resources.
class ScalingPlanState {
  /// CloudFormation stack or set of tags. You can create one scaling plan per application source.
  final pulumi.Input<ScalingPlanApplicationSource>? applicationSource;
  /// Name of the scaling plan. Names cannot contain vertical bars, colons, or forward slashes.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Scaling instructions. More details can be found in the [AWS Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ScalingInstruction.html).
  final pulumi.Input<List<ScalingPlanScalingInstruction>>? scalingInstructions;
  /// The version number of the scaling plan. This value is always 1.
  final pulumi.Input<int>? scalingPlanVersion;

  /// Creates a new [ScalingPlanState].
  /// [applicationSource] CloudFormation stack or set of tags. You can create one scaling plan per application source.
  /// [name] Name of the scaling plan. Names cannot contain vertical bars, colons, or forward slashes.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scalingInstructions] Scaling instructions. More details can be found in the [AWS Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ScalingInstruction.html).
  /// [scalingPlanVersion] The version number of the scaling plan. This value is always 1.
  ScalingPlanState({
    this.applicationSource,
    this.name,
    this.region,
    this.scalingInstructions,
    this.scalingPlanVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationSource': ?pulumi.Input.mapOptionalInputValue<ScalingPlanApplicationSource, Map<String, dynamic>>(applicationSource, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'scalingInstructions': ?pulumi.Input.mapOptionalInputValue<List<ScalingPlanScalingInstruction>, List<Map<String, dynamic>>>(scalingInstructions, (value) => pulumi.Input.encodeList<ScalingPlanScalingInstruction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scalingPlanVersion': ?scalingPlanVersion,
    };
  }

  factory ScalingPlanState.fromMap(Map<String, dynamic> map) {
    return ScalingPlanState(
      applicationSource: map['applicationSource'] == null ? null : ((ScalingPlanApplicationSource.fromMap((map['applicationSource']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      scalingInstructions: map['scalingInstructions'] == null ? null : ((pulumi.Input.decodeList<ScalingPlanScalingInstruction>(map['scalingInstructions']!, (value) => ScalingPlanScalingInstruction.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      scalingPlanVersion: map['scalingPlanVersion'] == null ? null : ((map['scalingPlanVersion'] as int).input()).input(),
    );
  }
}

