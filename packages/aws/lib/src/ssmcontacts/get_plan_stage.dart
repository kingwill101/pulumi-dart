// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_plan_stage_target.dart';

class GetPlanStage {
  final int durationInMinutes;
  final List<GetPlanStageTarget> targets;

  /// Creates a new [GetPlanStage].
  /// [durationInMinutes] Required.
  /// [targets] Required.
  GetPlanStage({
    required this.durationInMinutes,
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['durationInMinutes'] = durationInMinutes;
    map['targets'] =
        pulumi.Input.encodeList<GetPlanStageTarget, Map<String, dynamic>>(
            targets, (value) => value.toMap());
    return map;
  }

  factory GetPlanStage.fromMap(Map<String, dynamic> map) {
    return GetPlanStage(
      durationInMinutes: map['durationInMinutes'] as int,
      targets: pulumi.Input.decodeList<GetPlanStageTarget>(
          map['targets'],
          (value) => GetPlanStageTarget.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
