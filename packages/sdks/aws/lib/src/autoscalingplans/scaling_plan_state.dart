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
    pulumi.Output<ScalingPlanApplicationSource>? applicationSource,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<ScalingPlanScalingInstruction>>? scalingInstructions,
    pulumi.Output<int>? scalingPlanVersion,
  }) :
      applicationSource = pulumi.Input.asOptionalInput<ScalingPlanApplicationSource>(applicationSource),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      scalingInstructions = pulumi.Input.asOptionalInput<List<ScalingPlanScalingInstruction>>(scalingInstructions),
      scalingPlanVersion = pulumi.Input.asOptionalInput<int>(scalingPlanVersion);

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
      applicationSource: map['applicationSource'] == null ? null : pulumi.Output.create<ScalingPlanApplicationSource>(ScalingPlanApplicationSource.fromMap((map['applicationSource'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scalingInstructions: map['scalingInstructions'] == null ? null : pulumi.Output.create<List<ScalingPlanScalingInstruction>>(pulumi.Input.decodeList<ScalingPlanScalingInstruction>(map['scalingInstructions'], (value) => ScalingPlanScalingInstruction.fromMap((value as Map).cast<String, dynamic>()))),
      scalingPlanVersion: map['scalingPlanVersion'] == null ? null : pulumi.Output.create<int>(map['scalingPlanVersion'] as int),
    );
  }
}

