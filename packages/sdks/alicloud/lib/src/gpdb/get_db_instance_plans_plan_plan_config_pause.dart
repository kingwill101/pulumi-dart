// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDbInstancePlansPlanPlanConfigPause {
  /// The executed time of the Plan.
  final pulumi.Input<String> executeTime;
  /// The Cron Time of the plan.
  final pulumi.Input<String> planCronTime;
  /// The Status of the plan Task.
  final pulumi.Input<String> planTaskStatus;

  /// Creates a new [GetDbInstancePlansPlanPlanConfigPause].
  /// [executeTime] The executed time of the Plan.
  /// [planCronTime] The Cron Time of the plan.
  /// [planTaskStatus] The Status of the plan Task.
  GetDbInstancePlansPlanPlanConfigPause({
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

  factory GetDbInstancePlansPlanPlanConfigPause.fromMap(Map<String, dynamic> map) {
    return GetDbInstancePlansPlanPlanConfigPause(
      executeTime: pulumi.Input.fromValue(map['executeTime'] as String),
      planCronTime: pulumi.Input.fromValue(map['planCronTime'] as String),
      planTaskStatus: pulumi.Input.fromValue(map['planTaskStatus'] as String),
    );
  }
}

