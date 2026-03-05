// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDbInstancePlansPlanPlanConfigScaleOut {
  /// The executed time of the Plan.
  final pulumi.Input<String> executeTime;
  /// The Cron Time of the plan.
  final pulumi.Input<String> planCronTime;
  /// The Status of the plan Task.
  final pulumi.Input<String> planTaskStatus;
  /// The segment Node Num of the Plan.
  final pulumi.Input<String> segmentNodeNum;

  /// Creates a new [GetDbInstancePlansPlanPlanConfigScaleOut].
  /// [executeTime] The executed time of the Plan.
  /// [planCronTime] The Cron Time of the plan.
  /// [planTaskStatus] The Status of the plan Task.
  /// [segmentNodeNum] The segment Node Num of the Plan.
  GetDbInstancePlansPlanPlanConfigScaleOut({
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

  factory GetDbInstancePlansPlanPlanConfigScaleOut.fromMap(Map<String, dynamic> map) {
    return GetDbInstancePlansPlanPlanConfigScaleOut(
      executeTime: pulumi.Input.fromValue(map['executeTime'] as String),
      planCronTime: pulumi.Input.fromValue(map['planCronTime'] as String),
      planTaskStatus: pulumi.Input.fromValue(map['planTaskStatus'] as String),
      segmentNodeNum: pulumi.Input.fromValue(map['segmentNodeNum'] as String),
    );
  }
}

