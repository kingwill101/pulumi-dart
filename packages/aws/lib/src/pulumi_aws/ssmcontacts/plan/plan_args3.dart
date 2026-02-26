// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../plan_stage/plan_stage.dart';

/// The set of arguments for Plan.
class PlanArgs3 {
  /// The Amazon Resource Name (ARN) of the contact or escalation plan.
  final Input<String> contactId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// One or more configuration blocks for specifying a list of stages that the escalation plan or engagement plan uses to engage contacts and contact methods. See Stage below for more details.
  final Input<List<PlanStage>> stages;

  PlanArgs3({
    required this.contactId,
    this.region,
    required this.stages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contactId'] = contactId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['stages'] =
        Input.mapInputValue<List<PlanStage>, List<Map<String, dynamic>>>(
            stages,
            (value) => Input.encodeList<PlanStage, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    return map;
  }

  factory PlanArgs3.fromMap(Map<String, dynamic> map) {
    return PlanArgs3(
      contactId: Input.asInput<String>(map['contactId']),
      region: Input.asOptionalInput<String>(map['region']),
      stages: Input.asInput<List<PlanStage>>(map['stages']),
    );
  }
}
