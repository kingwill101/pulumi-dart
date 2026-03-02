// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DbInstancePlanPlanConfigScaleIn {
  /// The executed time of the Plan.
  final pulumi.Input<String>? executeTime;
  /// The Cron Time of the plan.
  final pulumi.Input<String>? planCronTime;
  /// (Available since v1.231.0) The status of the plan task.
  final pulumi.Input<String>? planTaskStatus;
  /// The segment Node Num of the Plan.
  final pulumi.Input<String>? segmentNodeNum;

  /// Creates a new [DbInstancePlanPlanConfigScaleIn].
  /// [executeTime] The executed time of the Plan.
  /// [planCronTime] The Cron Time of the plan.
  /// [planTaskStatus] (Available since v1.231.0) The status of the plan task.
  /// [segmentNodeNum] The segment Node Num of the Plan.
  DbInstancePlanPlanConfigScaleIn({
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

  factory DbInstancePlanPlanConfigScaleIn.fromMap(Map<String, dynamic> map) {
    return DbInstancePlanPlanConfigScaleIn(
      executeTime: map['executeTime'] == null ? null : (map['executeTime']! as String).input(),
      planCronTime: map['planCronTime'] == null ? null : (map['planCronTime']! as String).input(),
      planTaskStatus: map['planTaskStatus'] == null ? null : (map['planTaskStatus']! as String).input(),
      segmentNodeNum: map['segmentNodeNum'] == null ? null : (map['segmentNodeNum']! as String).input(),
    );
  }
}

