// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DbInstancePlanPlanConfigScaleOut {
  /// The executed time of the Plan.
  final pulumi.Input<String>? executeTime;
  /// The Cron Time of the plan.
  final pulumi.Input<String>? planCronTime;
  /// (Available since v1.231.0) The status of the plan task.
  final pulumi.Input<String>? planTaskStatus;
  /// The segment Node Num of the Plan.
  final pulumi.Input<String>? segmentNodeNum;

  /// Creates a new [DbInstancePlanPlanConfigScaleOut].
  /// [executeTime] The executed time of the Plan.
  /// [planCronTime] The Cron Time of the plan.
  /// [planTaskStatus] (Available since v1.231.0) The status of the plan task.
  /// [segmentNodeNum] The segment Node Num of the Plan.
  DbInstancePlanPlanConfigScaleOut({
    this.executeTime,
    this.planCronTime,
    this.planTaskStatus,
    this.segmentNodeNum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executeTime': ?executeTime,
      'planCronTime': ?planCronTime,
      'planTaskStatus': ?planTaskStatus,
      'segmentNodeNum': ?segmentNodeNum,
    };
  }

  factory DbInstancePlanPlanConfigScaleOut.fromMap(Map<String, dynamic> map) {
    return DbInstancePlanPlanConfigScaleOut(
      executeTime: (() { final guardedValue = map['executeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      planCronTime: (() { final guardedValue = map['planCronTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      planTaskStatus: (() { final guardedValue = map['planTaskStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      segmentNodeNum: (() { final guardedValue = map['segmentNodeNum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

