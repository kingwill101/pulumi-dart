// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_instance_plan_plan_config.dart';

/// Input properties used for looking up and filtering DbInstancePlan resources.
class DbInstancePlanState {
  /// The ID of the GPDB instance.
  final pulumi.Input<String>? dbInstanceId;
  /// The name of the Plan.
  final pulumi.Input<String>? dbInstancePlanName;
  /// The execution information of the plan. See `plan_config` below.
  final pulumi.Input<List<DbInstancePlanPlanConfig>>? planConfigs;
  /// The description of the Plan.
  final pulumi.Input<String>? planDesc;
  /// The end time of the Plan.
  final pulumi.Input<String>? planEndDate;
  /// The ID of the plan.
  final pulumi.Input<String>? planId;
  /// The execution mode of the plan. Valid values: `Postpone`, `Regular`.
  final pulumi.Input<String>? planScheduleType;
  /// The start time of the Plan.
  final pulumi.Input<String>? planStartDate;
  /// The type of the Plan. Valid values: `PauseResume`, `Resize`.
  final pulumi.Input<String>? planType;
  /// The Status of the Plan. Valid values: `active`, `cancel`.
  final pulumi.Input<String>? status;

  /// Creates a new [DbInstancePlanState].
  /// [dbInstanceId] The ID of the GPDB instance.
  /// [dbInstancePlanName] The name of the Plan.
  /// [planConfigs] The execution information of the plan. See `plan_config` below.
  /// [planDesc] The description of the Plan.
  /// [planEndDate] The end time of the Plan.
  /// [planId] The ID of the plan.
  /// [planScheduleType] The execution mode of the plan. Valid values: `Postpone`, `Regular`.
  /// [planStartDate] The start time of the Plan.
  /// [planType] The type of the Plan. Valid values: `PauseResume`, `Resize`.
  /// [status] The Status of the Plan. Valid values: `active`, `cancel`.
  DbInstancePlanState({
    this.dbInstanceId,
    this.dbInstancePlanName,
    this.planConfigs,
    this.planDesc,
    this.planEndDate,
    this.planId,
    this.planScheduleType,
    this.planStartDate,
    this.planType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': ?dbInstanceId,
      'dbInstancePlanName': ?dbInstancePlanName,
      'planConfigs': ?pulumi.Input.mapOptionalInputValue<List<DbInstancePlanPlanConfig>, List<Map<String, dynamic>>>(planConfigs, (value) => pulumi.Input.encodeList<DbInstancePlanPlanConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'planDesc': ?planDesc,
      'planEndDate': ?planEndDate,
      'planId': ?planId,
      'planScheduleType': ?planScheduleType,
      'planStartDate': ?planStartDate,
      'planType': ?planType,
      'status': ?status,
    };
  }

  factory DbInstancePlanState.fromMap(Map<String, dynamic> map) {
    return DbInstancePlanState(
      dbInstanceId: map['dbInstanceId'] == null ? null : (map['dbInstanceId']! as String).input(),
      dbInstancePlanName: map['dbInstancePlanName'] == null ? null : (map['dbInstancePlanName']! as String).input(),
      planConfigs: map['planConfigs'] == null ? null : (pulumi.Input.decodeList<DbInstancePlanPlanConfig>(map['planConfigs']!, (value) => DbInstancePlanPlanConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      planDesc: map['planDesc'] == null ? null : (map['planDesc']! as String).input(),
      planEndDate: map['planEndDate'] == null ? null : (map['planEndDate']! as String).input(),
      planId: map['planId'] == null ? null : (map['planId']! as String).input(),
      planScheduleType: map['planScheduleType'] == null ? null : (map['planScheduleType']! as String).input(),
      planStartDate: map['planStartDate'] == null ? null : (map['planStartDate']! as String).input(),
      planType: map['planType'] == null ? null : (map['planType']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

