// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ots_backup_plans_plan_ots_detail.dart';

class GetOtsBackupPlansPlan {
  /// The Backup type. Valid values: `COMPLETE`.
  final String backupType;
  /// The creation time of the backup plan. UNIX time in seconds.
  final String createdTime;
  /// Whether to be suspended. Valid values: `true`, `false`.
  final bool disabled;
  /// The ID of ots backup plan.
  final String id;
  /// The ID of ots backup plan.
  final String otsBackupPlanId;
  /// The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  final String otsBackupPlanName;
  final List<GetOtsBackupPlansPlanOtsDetail> otsDetails;
  /// The Backup retention days, the minimum is 1.
  final String retention;
  /// The Backup strategy. Optional format: I|{startTime}|{interval}. It means to execute a backup task every {interval} starting from {startTime}. The backup task for the elapsed time will not be compensated. If the last backup task is not completed yet, the next backup task will not be triggered.
  /// * `startTime` Backup start time, UNIX time seconds.
  final String schedule;
  /// The type of the data source.
  final String sourceType;
  /// The update time of the backup plan. UNIX time in seconds.
  /// *ots_detail - The details about the Tablestore instance.
  final String updatedTime;
  /// The ID of backup vault.
  final String vaultId;

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
      'otsDetails': pulumi.Input.encodeList<GetOtsBackupPlansPlanOtsDetail, Map<String, dynamic>>(otsDetails, (value) => value.toMap()),
      'retention': retention,
      'schedule': schedule,
      'sourceType': sourceType,
      'updatedTime': updatedTime,
      'vaultId': vaultId,
    };
  }

  factory GetOtsBackupPlansPlan.fromMap(Map<String, dynamic> map) {
    return GetOtsBackupPlansPlan(
      backupType: map['backupType'] as String,
      createdTime: map['createdTime'] as String,
      disabled: map['disabled'] as bool,
      id: map['id'] as String,
      otsBackupPlanId: map['otsBackupPlanId'] as String,
      otsBackupPlanName: map['otsBackupPlanName'] as String,
      otsDetails: pulumi.Input.decodeList<GetOtsBackupPlansPlanOtsDetail>(map['otsDetails'], (value) => GetOtsBackupPlansPlanOtsDetail.fromMap((value as Map).cast<String, dynamic>())),
      retention: map['retention'] as String,
      schedule: map['schedule'] as String,
      sourceType: map['sourceType'] as String,
      updatedTime: map['updatedTime'] as String,
      vaultId: map['vaultId'] as String,
    );
  }
}

