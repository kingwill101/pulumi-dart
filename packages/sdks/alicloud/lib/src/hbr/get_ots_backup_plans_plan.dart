// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ots_backup_plans_plan_ots_detail.dart';

class GetOtsBackupPlansPlan {
  /// The Backup type. Valid values: `COMPLETE`.
  final pulumi.Input<String> backupType;
  /// The creation time of the backup plan. UNIX time in seconds.
  final pulumi.Input<String> createdTime;
  /// Whether to be suspended. Valid values: `true`, `false`.
  final pulumi.Input<bool> disabled;
  /// The ID of ots backup plan.
  final pulumi.Input<String> id;
  /// The ID of ots backup plan.
  final pulumi.Input<String> otsBackupPlanId;
  /// The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  final pulumi.Input<String> otsBackupPlanName;
  final pulumi.Input<List<GetOtsBackupPlansPlanOtsDetail>> otsDetails;
  /// The Backup retention days, the minimum is 1.
  final pulumi.Input<String> retention;
  /// The Backup strategy. Optional format: I|{startTime}|{interval}. It means to execute a backup task every {interval} starting from {startTime}. The backup task for the elapsed time will not be compensated. If the last backup task is not completed yet, the next backup task will not be triggered.
  /// * `startTime` Backup start time, UNIX time seconds.
  final pulumi.Input<String> schedule;
  /// The type of the data source.
  final pulumi.Input<String> sourceType;
  /// The update time of the backup plan. UNIX time in seconds.
  /// *ots_detail - The details about the Tablestore instance.
  final pulumi.Input<String> updatedTime;
  /// The ID of backup vault.
  final pulumi.Input<String> vaultId;

  /// Creates a new [GetOtsBackupPlansPlan].
  /// [backupType] The Backup type. Valid values: `COMPLETE`.
  /// [createdTime] The creation time of the backup plan. UNIX time in seconds.
  /// [disabled] Whether to be suspended. Valid values: `true`, `false`.
  /// [id] The ID of ots backup plan.
  /// [otsBackupPlanId] The ID of ots backup plan.
  /// [otsBackupPlanName] The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  /// [otsDetails] Required.
  /// [retention] The Backup retention days, the minimum is 1.
  /// [schedule] The Backup strategy. Optional format: I|{startTime}|{interval}. It means to execute a backup task every {interval} starting from {startTime}. The backup task for the elapsed time will not be compensated. If the last backup task is not completed yet, the next backup task will not be triggered.
  /// [sourceType] The type of the data source.
  /// [updatedTime] The update time of the backup plan. UNIX time in seconds.
  /// [vaultId] The ID of backup vault.
  GetOtsBackupPlansPlan({
    required this.backupType,
    required this.createdTime,
    required this.disabled,
    required this.id,
    required this.otsBackupPlanId,
    required this.otsBackupPlanName,
    required this.otsDetails,
    required this.retention,
    required this.schedule,
    required this.sourceType,
    required this.updatedTime,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupType': backupType,
      'createdTime': createdTime,
      'disabled': disabled,
      'id': id,
      'otsBackupPlanId': otsBackupPlanId,
      'otsBackupPlanName': otsBackupPlanName,
      'otsDetails': pulumi.Input.mapInputValue<List<GetOtsBackupPlansPlanOtsDetail>, List<Map<String, dynamic>>>(otsDetails, (value) => pulumi.Input.encodeList<GetOtsBackupPlansPlanOtsDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'retention': retention,
      'schedule': schedule,
      'sourceType': sourceType,
      'updatedTime': updatedTime,
      'vaultId': vaultId,
    };
  }

  factory GetOtsBackupPlansPlan.fromMap(Map<String, dynamic> map) {
    return GetOtsBackupPlansPlan(
      backupType: (map['backupType'] as String).input(),
      createdTime: (map['createdTime'] as String).input(),
      disabled: (map['disabled'] as bool).input(),
      id: (map['id'] as String).input(),
      otsBackupPlanId: (map['otsBackupPlanId'] as String).input(),
      otsBackupPlanName: (map['otsBackupPlanName'] as String).input(),
      otsDetails: (pulumi.Input.decodeList<GetOtsBackupPlansPlanOtsDetail>(map['otsDetails'], (value) => GetOtsBackupPlansPlanOtsDetail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      retention: (map['retention'] as String).input(),
      schedule: (map['schedule'] as String).input(),
      sourceType: (map['sourceType'] as String).input(),
      updatedTime: (map['updatedTime'] as String).input(),
      vaultId: (map['vaultId'] as String).input(),
    );
  }
}

