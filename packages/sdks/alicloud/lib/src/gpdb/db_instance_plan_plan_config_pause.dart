// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DbInstancePlanPlanConfigPause {
  /// The executed time of the Plan.
  final pulumi.Input<String>? executeTime;
  /// The Cron Time of the plan.
  final pulumi.Input<String>? planCronTime;
  /// (Available since v1.231.0) The status of the plan task.
  final pulumi.Input<String>? planTaskStatus;

  /// Creates a new [DbInstancePlanPlanConfigPause].
  /// [executeTime] The executed time of the Plan.
  /// [planCronTime] The Cron Time of the plan.
  /// [planTaskStatus] (Available since v1.231.0) The status of the plan task.
  DbInstancePlanPlanConfigPause({
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

  factory DbInstancePlanPlanConfigPause.fromMap(Map<String, dynamic> map) {
    return DbInstancePlanPlanConfigPause(
      executeTime: map['executeTime'] == null ? null : (map['executeTime']! as String).input(),
      planCronTime: map['planCronTime'] == null ? null : (map['planCronTime']! as String).input(),
      planTaskStatus: map['planTaskStatus'] == null ? null : (map['planTaskStatus']! as String).input(),
    );
  }
}

