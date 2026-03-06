// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_instance_plan_plan_config.dart';

/// {@template pulumi_gpdb_db_instance_plan_db_instance_plan_args_doc}
/// The set of arguments for DbInstancePlan.
/// {@endtemplate}
/// {@macro pulumi_gpdb_db_instance_plan_db_instance_plan_args_doc}
class DbInstancePlanArgs {
  /// The ID of the GPDB instance.
  final pulumi.Input<String> dbInstanceId;
  /// The name of the Plan.
  final pulumi.Input<String> dbInstancePlanName;
  /// The execution information of the plan. See `plan_config` below.
  final pulumi.Input<List<DbInstancePlanPlanConfig>> planConfigs;
  /// The description of the Plan.
  final pulumi.Input<String>? planDesc;
  /// The end time of the Plan.
  final pulumi.Input<String>? planEndDate;
  /// The execution mode of the plan. Valid values: `Postpone`, `Regular`.
  final pulumi.Input<String> planScheduleType;
  /// The start time of the Plan.
  final pulumi.Input<String>? planStartDate;
  /// The type of the Plan. Valid values: `PauseResume`, `Resize`.
  final pulumi.Input<String> planType;
  /// The Status of the Plan. Valid values: `active`, `cancel`.
  final pulumi.Input<String>? status;

  /// Creates a new [DbInstancePlanArgs].
  /// [dbInstanceId] The ID of the GPDB instance.
  /// [dbInstancePlanName] The name of the Plan.
  /// [planConfigs] The execution information of the plan. See `plan_config` below.
  /// [planDesc] The description of the Plan.
  /// [planEndDate] The end time of the Plan.
  /// [planScheduleType] The execution mode of the plan. Valid values: `Postpone`, `Regular`.
  /// [planStartDate] The start time of the Plan.
  /// [planType] The type of the Plan. Valid values: `PauseResume`, `Resize`.
  /// [status] The Status of the Plan. Valid values: `active`, `cancel`.
  const DbInstancePlanArgs({
    required this.dbInstanceId,
    required this.dbInstancePlanName,
    required this.planConfigs,
    this.planDesc,
    this.planEndDate,
    required this.planScheduleType,
    this.planStartDate,
    required this.planType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'dbInstancePlanName': dbInstancePlanName,
      'planConfigs': pulumi.Input.mapInputValue<List<DbInstancePlanPlanConfig>, List<Map<String, dynamic>>>(planConfigs, (value) => pulumi.Input.encodeList<DbInstancePlanPlanConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'planDesc': ?planDesc,
      'planEndDate': ?planEndDate,
      'planScheduleType': planScheduleType,
      'planStartDate': ?planStartDate,
      'planType': planType,
      'status': ?status,
    };
  }

  factory DbInstancePlanArgs.fromMap(Map<String, dynamic> map) {
    return DbInstancePlanArgs(
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      dbInstancePlanName: pulumi.Input.fromValue(map['dbInstancePlanName'] as String),
      planConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<DbInstancePlanPlanConfig>(map['planConfigs']!, (value) => DbInstancePlanPlanConfig.fromMap((value as Map).cast<String, dynamic>()))),
      planDesc: (() { final guardedValue = map['planDesc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      planEndDate: (() { final guardedValue = map['planEndDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      planScheduleType: pulumi.Input.fromValue(map['planScheduleType'] as String),
      planStartDate: (() { final guardedValue = map['planStartDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      planType: pulumi.Input.fromValue(map['planType'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

