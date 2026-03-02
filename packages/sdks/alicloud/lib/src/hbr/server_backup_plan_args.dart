// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_backup_plan_detail.dart';

/// {@template pulumi_hbr_server_backup_plan_server_backup_plan_args_doc}
/// The set of arguments for ServerBackupPlan.
/// {@endtemplate}
/// {@macro pulumi_hbr_server_backup_plan_server_backup_plan_args_doc}
class ServerBackupPlanArgs {
  /// The role name created in the original account RAM backup by the cross account managed by the current account.
  final pulumi.Input<String>? crossAccountRoleName;
  /// The type of the cross account backup. Valid values: `SELF_ACCOUNT`, `CROSS_ACCOUNT`.
  final pulumi.Input<String>? crossAccountType;
  /// The original account ID of the cross account backup managed by the current account.
  final pulumi.Input<int>? crossAccountUserId;
  /// ECS server backup plan details.
  final pulumi.Input<List<ServerBackupPlanDetail>> details;
  /// Whether to disable the backup task. Valid values: `true`, `false`.
  final pulumi.Input<bool>? disabled;
  /// The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  final pulumi.Input<String> ecsServerBackupPlanName;
  /// The ID of ECS instance.
  final pulumi.Input<String> instanceId;
  /// Backup retention days, the minimum is 1.
  final pulumi.Input<int> retention;
  /// Backup strategy. Optional format: `I|{startTime}|{interval}`
  /// * `startTime` Backup start time, UNIX time, in seconds.
  final pulumi.Input<String> schedule;

  /// Creates a new [ServerBackupPlanArgs].
  /// [crossAccountRoleName] The role name created in the original account RAM backup by the cross account managed by the current account.
  /// [crossAccountType] The type of the cross account backup. Valid values: `SELF_ACCOUNT`, `CROSS_ACCOUNT`.
  /// [crossAccountUserId] The original account ID of the cross account backup managed by the current account.
  /// [details] ECS server backup plan details.
  /// [disabled] Whether to disable the backup task. Valid values: `true`, `false`.
  /// [ecsServerBackupPlanName] The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  /// [instanceId] The ID of ECS instance.
  /// [retention] Backup retention days, the minimum is 1.
  /// [schedule] Backup strategy. Optional format: `I|{startTime}|{interval}`
  ServerBackupPlanArgs({
    this.crossAccountRoleName,
    this.crossAccountType,
    this.crossAccountUserId,
    required this.details,
    this.disabled,
    required this.ecsServerBackupPlanName,
    required this.instanceId,
    required this.retention,
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossAccountRoleName': ?crossAccountRoleName,
      'crossAccountType': ?crossAccountType,
      'crossAccountUserId': ?crossAccountUserId,
      'details': pulumi.Input.mapInputValue<List<ServerBackupPlanDetail>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<ServerBackupPlanDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disabled': ?disabled,
      'ecsServerBackupPlanName': ecsServerBackupPlanName,
      'instanceId': instanceId,
      'retention': retention,
      'schedule': schedule,
    };
  }

  factory ServerBackupPlanArgs.fromMap(Map<String, dynamic> map) {
    return ServerBackupPlanArgs(
      crossAccountRoleName: map['crossAccountRoleName'] == null ? null : (map['crossAccountRoleName']! as String).input(),
      crossAccountType: map['crossAccountType'] == null ? null : (map['crossAccountType']! as String).input(),
      crossAccountUserId: map['crossAccountUserId'] == null ? null : (map['crossAccountUserId']! as int).input(),
      details: (pulumi.Input.decodeList<ServerBackupPlanDetail>(map['details'], (value) => ServerBackupPlanDetail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      ecsServerBackupPlanName: (map['ecsServerBackupPlanName'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      retention: (map['retention'] as int).input(),
      schedule: (map['schedule'] as String).input(),
    );
  }
}

