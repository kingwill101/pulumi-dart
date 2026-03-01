// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_stage.dart';

/// Input properties used for looking up and filtering Plan resources.
class PlanState {
  /// The Amazon Resource Name (ARN) of the contact or escalation plan.
  final pulumi.Input<String>? contactId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// One or more configuration blocks for specifying a list of stages that the escalation plan or engagement plan uses to engage contacts and contact methods. See Stage below for more details.
  final pulumi.Input<List<PlanStage>>? stages;

  /// Creates a new [PlanState].
  /// [contactId] The Amazon Resource Name (ARN) of the contact or escalation plan.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [stages] One or more configuration blocks for specifying a list of stages that the escalation plan or engagement plan uses to engage contacts and contact methods. See Stage below for more details.
  PlanState({
    pulumi.Output<String>? contactId,
    pulumi.Output<String>? region,
    pulumi.Output<List<PlanStage>>? stages,
  }) :
      contactId = pulumi.Input.asOptionalInput<String>(contactId),
      region = pulumi.Input.asOptionalInput<String>(region),
      stages = pulumi.Input.asOptionalInput<List<PlanStage>>(stages);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactId': ?contactId,
      'region': ?region,
      'stages': ?pulumi.Input.mapOptionalInputValue<List<PlanStage>, List<Map<String, dynamic>>>(stages, (value) => pulumi.Input.encodeList<PlanStage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanState.fromMap(Map<String, dynamic> map) {
    return PlanState(
      contactId: map['contactId'] == null ? null : pulumi.Output.create<String>(map['contactId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      stages: map['stages'] == null ? null : pulumi.Output.create<List<PlanStage>>(pulumi.Input.decodeList<PlanStage>(map['stages'], (value) => PlanStage.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

