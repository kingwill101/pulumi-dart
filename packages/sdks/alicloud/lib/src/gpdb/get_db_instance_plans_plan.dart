// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_instance_plans_plan_plan_config.dart';

class GetDbInstancePlansPlan {
  /// The name of the Plan.
  final pulumi.Input<String> dbInstancePlanName;
  /// The ID of the resource. The value formats as `&lt;db_instance_id&gt;:&lt;plan_id&gt;`.
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
  /// [id] The ID of the resource. The value formats as `&lt;db_instance_id&gt;:&lt;plan_id&gt;`.
  /// [planConfigs] Plan configuration information.
  /// [planDesc] Required.
  /// [planEndDate] The end time of the Plan.
  /// [planId] The ID of DB Instance Plan.
  /// [planScheduleType] Plan scheduling type. Valid values: `Postpone`, `Regular`.
  /// [planStartDate] The start time of the Plan.
  /// [planType] The type of the Plan. Valid values: `PauseResume`, `Resize`.
  /// [status] The Status of the Plan.
  const GetDbInstancePlansPlan({
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
      dbInstancePlanName: pulumi.Input.fromValue(map['dbInstancePlanName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      planConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDbInstancePlansPlanPlanConfig>(map['planConfigs']!, (value) => GetDbInstancePlansPlanPlanConfig.fromMap((value as Map).cast<String, dynamic>()))),
      planDesc: pulumi.Input.fromValue(map['planDesc'] as String),
      planEndDate: pulumi.Input.fromValue(map['planEndDate'] as String),
      planId: pulumi.Input.fromValue(map['planId'] as String),
      planScheduleType: pulumi.Input.fromValue(map['planScheduleType'] as String),
      planStartDate: pulumi.Input.fromValue(map['planStartDate'] as String),
      planType: pulumi.Input.fromValue(map['planType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

