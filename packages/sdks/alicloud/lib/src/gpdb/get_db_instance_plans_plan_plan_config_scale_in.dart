// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDbInstancePlansPlanPlanConfigScaleIn {
  /// The executed time of the Plan.
  final pulumi.Input<String> executeTime;

  /// The Cron Time of the plan.
  final pulumi.Input<String> planCronTime;

  /// The Status of the plan Task.
  final pulumi.Input<String> planTaskStatus;

  /// The segment Node Num of the Plan.
  final pulumi.Input<String> segmentNodeNum;

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

  factory GetDbInstancePlansPlanPlanConfigScaleIn.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDbInstancePlansPlanPlanConfigScaleIn(
      executeTime: pulumi.Input.fromValue(map['executeTime'] as String),
      planCronTime: pulumi.Input.fromValue(map['planCronTime'] as String),
      planTaskStatus: pulumi.Input.fromValue(map['planTaskStatus'] as String),
      segmentNodeNum: pulumi.Input.fromValue(map['segmentNodeNum'] as String),
    );
  }
}
