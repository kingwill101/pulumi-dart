// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_stage_target.dart';

class PlanStage {
  /// The time to wait until beginning the next stage. The duration can only be set to 0 if a target is specified.
  final pulumi.Input<int> durationInMinutes;

  /// One or more configuration blocks for specifying the contacts or contact methods that the escalation plan or engagement plan is engaging. See Target below for more details.
  final pulumi.Input<List<PlanStageTarget>>? targets;

  /// Creates a new [PlanStage].
  /// [durationInMinutes] The time to wait until beginning the next stage. The duration can only be set to 0 if a target is specified.
  /// [targets] One or more configuration blocks for specifying the contacts or contact methods that the escalation plan or engagement plan is engaging. See Target below for more details.
  PlanStage({required this.durationInMinutes, this.targets});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'durationInMinutes': durationInMinutes,
      'targets':
          ?pulumi.Input.mapOptionalInputValue<
            List<PlanStageTarget>,
            List<Map<String, dynamic>>
          >(
            targets,
            (value) =>
                pulumi.Input.encodeList<PlanStageTarget, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory PlanStage.fromMap(Map<String, dynamic> map) {
    return PlanStage(
      durationInMinutes: pulumi.Input.fromValue(
        map['durationInMinutes'] as int,
      ),
      targets: (() {
        final guardedValue = map['targets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PlanStageTarget>(
            guardedValue,
            (value) =>
                PlanStageTarget.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
