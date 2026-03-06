// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DbInstancePlanPlanConfigScaleUp {
  /// The executed time of the Plan.
  final pulumi.Input<String>? executeTime;
  /// The specification of segment nodes of the Plan.
  final pulumi.Input<String>? instanceSpec;
  /// The Cron Time of the plan.
  final pulumi.Input<String>? planCronTime;
  /// (Available since v1.231.0) The status of the plan task.
  final pulumi.Input<String>? planTaskStatus;

  /// Creates a new [DbInstancePlanPlanConfigScaleUp].
  /// [executeTime] The executed time of the Plan.
  /// [instanceSpec] The specification of segment nodes of the Plan.
  /// [planCronTime] The Cron Time of the plan.
  /// [planTaskStatus] (Available since v1.231.0) The status of the plan task.
  const DbInstancePlanPlanConfigScaleUp({
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
      executeTime: (() { final guardedValue = map['executeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceSpec: (() { final guardedValue = map['instanceSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      planCronTime: (() { final guardedValue = map['planCronTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      planTaskStatus: (() { final guardedValue = map['planTaskStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

