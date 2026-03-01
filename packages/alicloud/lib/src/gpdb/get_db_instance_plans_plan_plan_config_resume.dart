// ignore_for_file: unused_element, unnecessary_cast


class GetDbInstancePlansPlanPlanConfigResume {
  /// The executed time of the Plan.
  final String executeTime;
  /// The Cron Time of the plan.
  final String planCronTime;
  /// The Status of the plan Task.
  final String planTaskStatus;

  /// Creates a new [GetDbInstancePlansPlanPlanConfigResume].
  /// [executeTime] The executed time of the Plan.
  /// [planCronTime] The Cron Time of the plan.
  /// [planTaskStatus] The Status of the plan Task.
  GetDbInstancePlansPlanPlanConfigResume({
    required this.executeTime,
    required this.planCronTime,
    required this.planTaskStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executeTime': executeTime,
      'planCronTime': planCronTime,
      'planTaskStatus': planTaskStatus,
    };
  }

  factory GetDbInstancePlansPlanPlanConfigResume.fromMap(Map<String, dynamic> map) {
    return GetDbInstancePlansPlanPlanConfigResume(
      executeTime: map['executeTime'] as String,
      planCronTime: map['planCronTime'] as String,
      planTaskStatus: map['planTaskStatus'] as String,
    );
  }
}

