// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../plan_stage_target/plan_stage_target.dart';

class PlanStage {
  /// The time to wait until beginning the next stage. The duration can only be set to 0 if a target is specified.
  final int durationInMinutes;

  /// One or more configuration blocks for specifying the contacts or contact methods that the escalation plan or engagement plan is engaging. See Target below for more details.
  final List<PlanStageTarget>? targets;

  PlanStage({
    required this.durationInMinutes,
    this.targets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['durationInMinutes'] = durationInMinutes;
    final targetsValue = targets;
    if (targetsValue != null) {
      map['targets'] = Input.encodeList<PlanStageTarget, Map<String, dynamic>>(
          targetsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PlanStage.fromMap(Map<String, dynamic> map) {
    return PlanStage(
      durationInMinutes: map['durationInMinutes'] as int,
      targets: map['targets'] == null
          ? null
          : Input.decodeList<PlanStageTarget>(
              map['targets'],
              (value) => PlanStageTarget.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
