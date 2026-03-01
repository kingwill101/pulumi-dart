// ignore_for_file: unused_element, unnecessary_cast


class GetDbInstancePlansPlanPlanConfigScaleIn {
  /// The executed time of the Plan.
  final String executeTime;
  /// The Cron Time of the plan.
  final String planCronTime;
  /// The Status of the plan Task.
  final String planTaskStatus;
  /// The segment Node Num of the Plan.
  final String segmentNodeNum;

  /// Creates a new [GetDbInstancePlansPlanPlanConfigScaleIn].
  /// [executeTime] The executed time of the Plan.
  /// [planCronTime] The Cron Time of the plan.
  /// [planTaskStatus] The Status of the plan Task.
  /// [segmentNodeNum] The segment Node Num of the Plan.
  GetDbInstancePlansPlanPlanConfigScaleIn({
    required this.executeTime,
    required this.planCronTime,
    required this.planTaskStatus,
    required this.segmentNodeNum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executeTime': executeTime,
      'planCronTime': planCronTime,
      'planTaskStatus': planTaskStatus,
      'segmentNodeNum': segmentNodeNum,
    };
  }

  factory GetDbInstancePlansPlanPlanConfigScaleIn.fromMap(Map<String, dynamic> map) {
    return GetDbInstancePlansPlanPlanConfigScaleIn(
      executeTime: map['executeTime'] as String,
      planCronTime: map['planCronTime'] as String,
      planTaskStatus: map['planTaskStatus'] as String,
      segmentNodeNum: map['segmentNodeNum'] as String,
    );
  }
}

