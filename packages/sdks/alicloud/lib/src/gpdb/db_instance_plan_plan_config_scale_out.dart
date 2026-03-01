// ignore_for_file: unused_element, unnecessary_cast


class DbInstancePlanPlanConfigScaleOut {
  /// The executed time of the Plan.
  final String? executeTime;
  /// The Cron Time of the plan.
  final String? planCronTime;
  /// (Available since v1.231.0) The status of the plan task.
  final String? planTaskStatus;
  /// The segment Node Num of the Plan.
  final String? segmentNodeNum;

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
      executeTime: map['executeTime'] == null ? null : map['executeTime'] as String,
      planCronTime: map['planCronTime'] == null ? null : map['planCronTime'] as String,
      planTaskStatus: map['planTaskStatus'] == null ? null : map['planTaskStatus'] as String,
      segmentNodeNum: map['segmentNodeNum'] == null ? null : map['segmentNodeNum'] as String,
    );
  }
}

