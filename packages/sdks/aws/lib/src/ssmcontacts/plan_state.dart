// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_stage.dart';

/// Input properties used for looking up and filtering Plan resources.
class PlanState {
  /// The ARN of the contact or escalation plan.
  final pulumi.Input<String?>? contactId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// One or more configuration blocks for specifying a list of stages that the escalation plan or engagement plan uses to engage contacts and contact methods. See Stage below for more details.
  final pulumi.Input<List<PlanStage>?>? stages;

  /// Creates a new [PlanState].
  /// [contactId] The ARN of the contact or escalation plan.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [stages] One or more configuration blocks for specifying a list of stages that the escalation plan or engagement plan uses to engage contacts and contact methods. See Stage below for more details.
  const PlanState({
    this.contactId,
    this.region,
    this.stages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactId': ?contactId,
      'region': ?region,
      'stages': ?pulumi.Input.mapOptionalInputValue<List<PlanStage>, List<Map<String, dynamic>>>(stages, (value) => pulumi.Input.encodeList<PlanStage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanState.fromMap(Map<String, dynamic> map) {
    return PlanState(
      contactId: (() { final guardedValue = map['contactId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stages: (() { final guardedValue = map['stages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanStage>(guardedValue, (value) => PlanStage.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
