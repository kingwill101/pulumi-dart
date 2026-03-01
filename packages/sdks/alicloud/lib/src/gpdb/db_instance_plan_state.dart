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
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<String>? dbInstancePlanName,
    pulumi.Output<List<DbInstancePlanPlanConfig>>? planConfigs,
    pulumi.Output<String>? planDesc,
    pulumi.Output<String>? planEndDate,
    pulumi.Output<String>? planId,
    pulumi.Output<String>? planScheduleType,
    pulumi.Output<String>? planStartDate,
    pulumi.Output<String>? planType,
    pulumi.Output<String>? status,
  }) :
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      dbInstancePlanName = pulumi.Input.asOptionalInput<String>(dbInstancePlanName),
      planConfigs = pulumi.Input.asOptionalInput<List<DbInstancePlanPlanConfig>>(planConfigs),
      planDesc = pulumi.Input.asOptionalInput<String>(planDesc),
      planEndDate = pulumi.Input.asOptionalInput<String>(planEndDate),
      planId = pulumi.Input.asOptionalInput<String>(planId),
      planScheduleType = pulumi.Input.asOptionalInput<String>(planScheduleType),
      planStartDate = pulumi.Input.asOptionalInput<String>(planStartDate),
      planType = pulumi.Input.asOptionalInput<String>(planType),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      dbInstancePlanName: map['dbInstancePlanName'] == null ? null : pulumi.Output.create<String>(map['dbInstancePlanName'] as String),
      planConfigs: map['planConfigs'] == null ? null : pulumi.Output.create<List<DbInstancePlanPlanConfig>>(pulumi.Input.decodeList<DbInstancePlanPlanConfig>(map['planConfigs'], (value) => DbInstancePlanPlanConfig.fromMap((value as Map).cast<String, dynamic>()))),
      planDesc: map['planDesc'] == null ? null : pulumi.Output.create<String>(map['planDesc'] as String),
      planEndDate: map['planEndDate'] == null ? null : pulumi.Output.create<String>(map['planEndDate'] as String),
      planId: map['planId'] == null ? null : pulumi.Output.create<String>(map['planId'] as String),
      planScheduleType: map['planScheduleType'] == null ? null : pulumi.Output.create<String>(map['planScheduleType'] as String),
      planStartDate: map['planStartDate'] == null ? null : pulumi.Output.create<String>(map['planStartDate'] as String),
      planType: map['planType'] == null ? null : pulumi.Output.create<String>(map['planType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

