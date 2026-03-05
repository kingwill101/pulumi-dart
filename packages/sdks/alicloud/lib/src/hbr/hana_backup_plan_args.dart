// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_hana_backup_plan_hana_backup_plan_args_doc}
/// The set of arguments for HanaBackupPlan.
/// {@endtemplate}
/// {@macro pulumi_hbr_hana_backup_plan_hana_backup_plan_args_doc}
class HanaBackupPlanArgs {
  /// The backup prefix.
  final pulumi.Input<String>? backupPrefix;
  /// The backup type. Valid values:
  /// - `COMPLETE`: full backup.
  /// - `INCREMENTAL`: incremental backup.
  /// - `DIFFERENTIAL`: differential backup.
  final pulumi.Input<String> backupType;
  /// The ID of the SAP HANA instance.
  final pulumi.Input<String> clusterId;
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The name of the backup plan.
  final pulumi.Input<String> planName;
  /// The resource attribute field that represents the resource group ID.
  final pulumi.Input<String>? resourceGroupId;
  /// The backup policy. Format: `I|{startTime}|{interval}`. The system runs the first backup job at a point in time that is specified in the {startTime} parameter and the subsequent backup jobs at an interval that is specified in the {interval} parameter. The system does not run a backup job before the specified point in time. Each backup job, except the first one, starts only after the previous backup job is completed. For example, I|1631685600|P1D specifies that the system runs the first backup job at 14:00:00 on September 15, 2021 and the subsequent backup jobs once a day.
  final pulumi.Input<String> schedule;
  /// The status of the resource. Valid values: `Enabled`, `Disabled`.
  final pulumi.Input<String>? status;
  /// The ID of the backup vault.
  final pulumi.Input<String> vaultId;

  /// Creates a new [HanaBackupPlanArgs].
  /// [backupPrefix] The backup prefix.
  /// [backupType] The backup type. Valid values:
  /// [clusterId] The ID of the SAP HANA instance.
  /// [databaseName] The name of the database.
  /// [planName] The name of the backup plan.
  /// [resourceGroupId] The resource attribute field that represents the resource group ID.
  /// [schedule] The backup policy. Format: `I|{startTime}|{interval}`. The system runs the first backup job at a point in time that is specified in the {startTime} parameter and the subsequent backup jobs at an interval that is specified in the {interval} parameter. The system does not run a backup job before the specified point in time. Each backup job, except the first one, starts only after the previous backup job is completed. For example, I|1631685600|P1D specifies that the system runs the first backup job at 14:00:00 on September 15, 2021 and the subsequent backup jobs once a day.
  /// [status] The status of the resource. Valid values: `Enabled`, `Disabled`.
  /// [vaultId] The ID of the backup vault.
  HanaBackupPlanArgs({
    this.backupPrefix,
    required this.backupType,
    required this.clusterId,
    required this.databaseName,
    required this.planName,
    this.resourceGroupId,
    required this.schedule,
    this.status,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPrefix': ?backupPrefix,
      'backupType': backupType,
      'clusterId': clusterId,
      'databaseName': databaseName,
      'planName': planName,
      'resourceGroupId': ?resourceGroupId,
      'schedule': schedule,
      'status': ?status,
      'vaultId': vaultId,
    };
  }

  factory HanaBackupPlanArgs.fromMap(Map<String, dynamic> map) {
    return HanaBackupPlanArgs(
      backupPrefix: (() { final guardedValue = map['backupPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupType: pulumi.Input.fromValue(map['backupType'] as String),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      planName: pulumi.Input.fromValue(map['planName'] as String),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultId: pulumi.Input.fromValue(map['vaultId'] as String),
    );
  }
}

