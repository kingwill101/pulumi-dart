// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_plan_stage_target.dart';

class GetPlanStage {
  final pulumi.Input<int> durationInMinutes;
  final pulumi.Input<List<GetPlanStageTarget>> targets;

  /// Creates a new [GetPlanStage].
  /// [durationInMinutes] Required.
  /// [targets] Required.
  GetPlanStage({
    required this.durationInMinutes,
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'durationInMinutes': durationInMinutes,
      'targets': pulumi.Input.mapInputValue<List<GetPlanStageTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<GetPlanStageTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetPlanStage.fromMap(Map<String, dynamic> map) {
    return GetPlanStage(
      durationInMinutes: pulumi.Input.fromValue(map['durationInMinutes'] as int),
      targets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPlanStageTarget>(map['targets']!, (value) => GetPlanStageTarget.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

