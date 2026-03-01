// ignore_for_file: unused_element, unnecessary_cast


class DbInstancePlanPlanConfigResume {
  /// The executed time of the Plan.
  final String? executeTime;
  /// The Cron Time of the plan.
  final String? planCronTime;
  /// (Available since v1.231.0) The status of the plan task.
  final String? planTaskStatus;

  /// Creates a new [DbInstancePlanPlanConfigResume].
  /// [executeTime] The executed time of the Plan.
  /// [planCronTime] The Cron Time of the plan.
  /// [planTaskStatus] (Available since v1.231.0) The status of the plan task.
  DbInstancePlanPlanConfigResume({
    this.executeTime,
    this.planCronTime,
    this.planTaskStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executeTime': ?executeTime,
      'planCronTime': ?planCronTime,
      'planTaskStatus': ?planTaskStatus,
    };
  }

  factory DbInstancePlanPlanConfigResume.fromMap(Map<String, dynamic> map) {
    return DbInstancePlanPlanConfigResume(
      executeTime: map['executeTime'] == null ? null : map['executeTime'] as String,
      planCronTime: map['planCronTime'] == null ? null : map['planCronTime'] as String,
      planTaskStatus: map['planTaskStatus'] == null ? null : map['planTaskStatus'] as String,
    );
  }
}

