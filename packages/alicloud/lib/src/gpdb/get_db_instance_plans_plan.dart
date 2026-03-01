// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_instance_plans_plan_plan_config.dart';

class GetDbInstancePlansPlan {
  /// The name of the Plan.
  final String dbInstancePlanName;
  /// The ID of the resource. The value formats as `<db_instance_id>:<plan_id>`.
  final String id;
  /// Plan configuration information.
  final List<GetDbInstancePlansPlanPlanConfig> planConfigs;
  final String planDesc;
  /// The end time of the Plan.
  final String planEndDate;
  /// The ID of DB Instance Plan.
  final String planId;
  /// Plan scheduling type. Valid values: `Postpone`, `Regular`.
  final String planScheduleType;
  /// The start time of the Plan.
  final String planStartDate;
  /// The type of the Plan. Valid values: `PauseResume`, `Resize`.
  final String planType;
  /// The Status of the Plan.
  final String status;

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
      'planConfigs': pulumi.Input.encodeList<GetDbInstancePlansPlanPlanConfig, Map<String, dynamic>>(planConfigs, (value) => value.toMap()),
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
      dbInstancePlanName: map['dbInstancePlanName'] as String,
      id: map['id'] as String,
      planConfigs: pulumi.Input.decodeList<GetDbInstancePlansPlanPlanConfig>(map['planConfigs'], (value) => GetDbInstancePlansPlanPlanConfig.fromMap((value as Map).cast<String, dynamic>())),
      planDesc: map['planDesc'] as String,
      planEndDate: map['planEndDate'] as String,
      planId: map['planId'] as String,
      planScheduleType: map['planScheduleType'] as String,
      planStartDate: map['planStartDate'] as String,
      planType: map['planType'] as String,
      status: map['status'] as String,
    );
  }
}

