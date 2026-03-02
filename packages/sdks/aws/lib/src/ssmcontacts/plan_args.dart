// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_stage.dart';

/// {@template pulumi_ssmcontacts_plan_plan_args_doc}
/// The set of arguments for Plan.
/// {@endtemplate}
/// {@macro pulumi_ssmcontacts_plan_plan_args_doc}
class PlanArgs {
  /// The Amazon Resource Name (ARN) of the contact or escalation plan.
  final pulumi.Input<String> contactId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// One or more configuration blocks for specifying a list of stages that the escalation plan or engagement plan uses to engage contacts and contact methods. See Stage below for more details.
  final pulumi.Input<List<PlanStage>> stages;

  /// Creates a new [PlanArgs].
  /// [contactId] The Amazon Resource Name (ARN) of the contact or escalation plan.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [stages] One or more configuration blocks for specifying a list of stages that the escalation plan or engagement plan uses to engage contacts and contact methods. See Stage below for more details.
  PlanArgs({
    required this.contactId,
    this.region,
    required this.stages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactId': contactId,
      'region': ?region,
      'stages': pulumi.Input.mapInputValue<List<PlanStage>, List<Map<String, dynamic>>>(stages, (value) => pulumi.Input.encodeList<PlanStage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanArgs.fromMap(Map<String, dynamic> map) {
    return PlanArgs(
      contactId: (map['contactId'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      stages: (pulumi.Input.decodeList<PlanStage>(map['stages']!, (value) => PlanStage.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

