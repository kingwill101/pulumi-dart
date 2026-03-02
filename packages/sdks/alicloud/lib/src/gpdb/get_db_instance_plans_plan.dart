// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_instance_plans_plan_plan_config.dart';

class GetDbInstancePlansPlan {
  /// The name of the Plan.
  final pulumi.Input<String> dbInstancePlanName;
  /// The ID of the resource. The value formats as `<db_instance_id>:<plan_id>`.
  final pulumi.Input<String> id;
  /// Plan configuration information.
  final pulumi.Input<List<GetDbInstancePlansPlanPlanConfig>> planConfigs;
  final pulumi.Input<String> planDesc;
  /// The end time of the Plan.
  final pulumi.Input<String> planEndDate;
  /// The ID of DB Instance Plan.
  final pulumi.Input<String> planId;
  /// Plan scheduling type. Valid values: `Postpone`, `Regular`.
  final pulumi.Input<String> planScheduleType;
  /// The start time of the Plan.
  final pulumi.Input<String> planStartDate;
  /// The type of the Plan. Valid values: `PauseResume`, `Resize`.
  final pulumi.Input<String> planType;
  /// The Status of the Plan.
  final pulumi.Input<String> status;

  /// Creates a new [GetDbInstancePlansPlan].
  /// [dbInstancePlanName] The name of the Plan.
  /// [id] The ID of the resource. The value formats as `<db_instance_id>:<plan_id>`.
  /// [planConfigs] Plan configuration information.
  /// [planDesc] Required.
  /// [planEndDate] The end time of the Plan.
  /// [planId] The ID of DB Instance Plan.
  /// [planScheduleType] Plan scheduling type. Valid values: `Postpone`, `Regular`.
  /// [planStartDate] The start time of the Plan.
  /// [planType] The type of the Plan. Valid values: `PauseResume`, `Resize`.
  /// [status] The Status of the Plan.
  GetDbInstancePlansPlan({
    required this.dbInstancePlanName,
    required this.id,
    required this.planConfigs,
    required this.planDesc,
    required this.planEndDate,
    required this.planId,
    required this.planScheduleType,
    required this.planStartDate,
    required this.planType,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstancePlanName': dbInstancePlanName,
      'id': id,
      'planConfigs': pulumi.Input.mapInputValue<List<GetDbInstancePlansPlanPlanConfig>, List<Map<String, dynamic>>>(planConfigs, (value) => pulumi.Input.encodeList<GetDbInstancePlansPlanPlanConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'planDesc': planDesc,
      'planEndDate': planEndDate,
      'planId': planId,
      'planScheduleType': planScheduleType,
      'planStartDate': planStartDate,
      'planType': planType,
      'status': status,
    };
  }

  factory GetDbInstancePlansPlan.fromMap(Map<String, dynamic> map) {
    return GetDbInstancePlansPlan(
      dbInstancePlanName: (map['dbInstancePlanName'] as String).input(),
      id: (map['id'] as String).input(),
      planConfigs: (pulumi.Input.decodeList<GetDbInstancePlansPlanPlanConfig>(map['planConfigs'], (value) => GetDbInstancePlansPlanPlanConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      planDesc: (map['planDesc'] as String).input(),
      planEndDate: (map['planEndDate'] as String).input(),
      planId: (map['planId'] as String).input(),
      planScheduleType: (map['planScheduleType'] as String).input(),
      planStartDate: (map['planStartDate'] as String).input(),
      planType: (map['planType'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

