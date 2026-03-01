// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_backup_plan_detail.dart';

/// Input properties used for looking up and filtering ServerBackupPlan resources.
class ServerBackupPlanState {
  /// The role name created in the original account RAM backup by the cross account managed by the current account.
  final pulumi.Input<String>? crossAccountRoleName;
  /// The type of the cross account backup. Valid values: `SELF_ACCOUNT`, `CROSS_ACCOUNT`.
  final pulumi.Input<String>? crossAccountType;
  /// The original account ID of the cross account backup managed by the current account.
  final pulumi.Input<int>? crossAccountUserId;
  /// ECS server backup plan details.
  final pulumi.Input<List<ServerBackupPlanDetail>>? details;
  /// Whether to disable the backup task. Valid values: `true`, `false`.
  final pulumi.Input<bool>? disabled;
  /// The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  final pulumi.Input<String>? ecsServerBackupPlanName;
  /// The ID of ECS instance.
  final pulumi.Input<String>? instanceId;
  /// Backup retention days, the minimum is 1.
  final pulumi.Input<int>? retention;
  /// Backup strategy. Optional format: `I|{startTime}|{interval}`
  /// * `startTime` Backup start time, UNIX time, in seconds.
  final pulumi.Input<String>? schedule;

  /// Creates a new [ServerBackupPlanState].
  /// [crossAccountRoleName] The role name created in the original account RAM backup by the cross account managed by the current account.
  /// [crossAccountType] The type of the cross account backup. Valid values: `SELF_ACCOUNT`, `CROSS_ACCOUNT`.
  /// [crossAccountUserId] The original account ID of the cross account backup managed by the current account.
  /// [details] ECS server backup plan details.
  /// [disabled] Whether to disable the backup task. Valid values: `true`, `false`.
  /// [ecsServerBackupPlanName] The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  /// [instanceId] The ID of ECS instance.
  /// [retention] Backup retention days, the minimum is 1.
  /// [schedule] Backup strategy. Optional format: `I|{startTime}|{interval}`
  ServerBackupPlanState({
    pulumi.Output<String>? crossAccountRoleName,
    pulumi.Output<String>? crossAccountType,
    pulumi.Output<int>? crossAccountUserId,
    pulumi.Output<List<ServerBackupPlanDetail>>? details,
    pulumi.Output<bool>? disabled,
    pulumi.Output<String>? ecsServerBackupPlanName,
    pulumi.Output<String>? instanceId,
    pulumi.Output<int>? retention,
    pulumi.Output<String>? schedule,
  }) :
      crossAccountRoleName = pulumi.Input.asOptionalInput<String>(crossAccountRoleName),
      crossAccountType = pulumi.Input.asOptionalInput<String>(crossAccountType),
      crossAccountUserId = pulumi.Input.asOptionalInput<int>(crossAccountUserId),
      details = pulumi.Input.asOptionalInput<List<ServerBackupPlanDetail>>(details),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      ecsServerBackupPlanName = pulumi.Input.asOptionalInput<String>(ecsServerBackupPlanName),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      retention = pulumi.Input.asOptionalInput<int>(retention),
      schedule = pulumi.Input.asOptionalInput<String>(schedule);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossAccountRoleName': ?crossAccountRoleName,
      'crossAccountType': ?crossAccountType,
      'crossAccountUserId': ?crossAccountUserId,
      'details': ?pulumi.Input.mapOptionalInputValue<List<ServerBackupPlanDetail>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<ServerBackupPlanDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disabled': ?disabled,
      'ecsServerBackupPlanName': ?ecsServerBackupPlanName,
      'instanceId': ?instanceId,
      'retention': ?retention,
      'schedule': ?schedule,
    };
  }

  factory ServerBackupPlanState.fromMap(Map<String, dynamic> map) {
    return ServerBackupPlanState(
      crossAccountRoleName: map['crossAccountRoleName'] == null ? null : pulumi.Output.create<String>(map['crossAccountRoleName'] as String),
      crossAccountType: map['crossAccountType'] == null ? null : pulumi.Output.create<String>(map['crossAccountType'] as String),
      crossAccountUserId: map['crossAccountUserId'] == null ? null : pulumi.Output.create<int>(map['crossAccountUserId'] as int),
      details: map['details'] == null ? null : pulumi.Output.create<List<ServerBackupPlanDetail>>(pulumi.Input.decodeList<ServerBackupPlanDetail>(map['details'], (value) => ServerBackupPlanDetail.fromMap((value as Map).cast<String, dynamic>()))),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      ecsServerBackupPlanName: map['ecsServerBackupPlanName'] == null ? null : pulumi.Output.create<String>(map['ecsServerBackupPlanName'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      retention: map['retention'] == null ? null : pulumi.Output.create<int>(map['retention'] as int),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<String>(map['schedule'] as String),
    );
  }
}

