// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DbInstancePlanPlanConfigScaleDown {
  /// The executed time of the Plan.
  final pulumi.Input<String>? executeTime;
  /// The specification of segment nodes of the Plan.
  final pulumi.Input<String>? instanceSpec;
  /// The Cron Time of the plan.
  final pulumi.Input<String>? planCronTime;
  /// (Available since v1.231.0) The status of the plan task.
  final pulumi.Input<String>? planTaskStatus;

  /// Creates a new [DbInstancePlanPlanConfigScaleDown].
  /// [executeTime] The executed time of the Plan.
  /// [instanceSpec] The specification of segment nodes of the Plan.
  /// [planCronTime] The Cron Time of the plan.
  /// [planTaskStatus] (Available since v1.231.0) The status of the plan task.
  DbInstancePlanPlanConfigScaleDown({
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

  factory DbInstancePlanPlanConfigScaleDown.fromMap(Map<String, dynamic> map) {
    return DbInstancePlanPlanConfigScaleDown(
      executeTime: map['executeTime'] == null ? null : (map['executeTime']! as String).input(),
      instanceSpec: map['instanceSpec'] == null ? null : (map['instanceSpec']! as String).input(),
      planCronTime: map['planCronTime'] == null ? null : (map['planCronTime']! as String).input(),
      planTaskStatus: map['planTaskStatus'] == null ? null : (map['planTaskStatus']! as String).input(),
    );
  }
}

