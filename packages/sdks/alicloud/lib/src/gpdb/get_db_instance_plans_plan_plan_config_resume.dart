// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDbInstancePlansPlanPlanConfigResume {
  /// The executed time of the Plan.
  final pulumi.Input<String> executeTime;
  /// The Cron Time of the plan.
  final pulumi.Input<String> planCronTime;
  /// The Status of the plan Task.
  final pulumi.Input<String> planTaskStatus;

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
      executeTime: (map['executeTime'] as String).input(),
      planCronTime: (map['planCronTime'] as String).input(),
      planTaskStatus: (map['planTaskStatus'] as String).input(),
    );
  }
}

