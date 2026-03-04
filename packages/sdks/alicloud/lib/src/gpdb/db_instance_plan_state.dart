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
      'planConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<DbInstancePlanPlanConfig>,
            List<Map<String, dynamic>>
          >(
            planConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  DbInstancePlanPlanConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      dbInstanceId: (() {
        final guardedValue = map['dbInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbInstancePlanName: (() {
        final guardedValue = map['dbInstancePlanName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      planConfigs: (() {
        final guardedValue = map['planConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DbInstancePlanPlanConfig>(
            guardedValue,
            (value) => DbInstancePlanPlanConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      planDesc: (() {
        final guardedValue = map['planDesc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      planEndDate: (() {
        final guardedValue = map['planEndDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      planId: (() {
        final guardedValue = map['planId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      planScheduleType: (() {
        final guardedValue = map['planScheduleType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      planStartDate: (() {
        final guardedValue = map['planStartDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      planType: (() {
        final guardedValue = map['planType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
