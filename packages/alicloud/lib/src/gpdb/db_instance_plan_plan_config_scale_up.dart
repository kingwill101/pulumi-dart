// ignore_for_file: unused_element, unnecessary_cast


class DbInstancePlanPlanConfigScaleUp {
  /// The executed time of the Plan.
  final String? executeTime;
  /// The specification of segment nodes of the Plan.
  final String? instanceSpec;
  /// The Cron Time of the plan.
  final String? planCronTime;
  /// (Available since v1.231.0) The status of the plan task.
  final String? planTaskStatus;

  /// Creates a new [DbInstancePlanPlanConfigScaleUp].
  /// [executeTime] The executed time of the Plan.
  /// [instanceSpec] The specification of segment nodes of the Plan.
  /// [planCronTime] The Cron Time of the plan.
  /// [planTaskStatus] (Available since v1.231.0) The status of the plan task.
  DbInstancePlanPlanConfigScaleUp({
    this.executeTime,
    this.instanceSpec,
    this.planCronTime,
    this.planTaskStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executeTime': ?executeTime,
      'instanceSpec': ?instanceSpec,
      'planCronTime': ?planCronTime,
      'planTaskStatus': ?planTaskStatus,
    };
  }

  factory DbInstancePlanPlanConfigScaleUp.fromMap(Map<String, dynamic> map) {
    return DbInstancePlanPlanConfigScaleUp(
      executeTime: map['executeTime'] == null ? null : map['executeTime'] as String,
      instanceSpec: map['instanceSpec'] == null ? null : map['instanceSpec'] as String,
      planCronTime: map['planCronTime'] == null ? null : map['planCronTime'] as String,
      planTaskStatus: map['planTaskStatus'] == null ? null : map['planTaskStatus'] as String,
    );
  }
}

