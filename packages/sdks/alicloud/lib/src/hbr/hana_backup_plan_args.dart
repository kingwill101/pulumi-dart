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
    pulumi.Output<String>? backupPrefix,
    required pulumi.Output<String> backupType,
    required pulumi.Output<String> clusterId,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> planName,
    pulumi.Output<String>? resourceGroupId,
    required pulumi.Output<String> schedule,
    pulumi.Output<String>? status,
    required pulumi.Output<String> vaultId,
  }) :
      backupPrefix = pulumi.Input.asOptionalInput<String>(backupPrefix),
      backupType = pulumi.Input.asInput<String>(backupType),
      clusterId = pulumi.Input.asInput<String>(clusterId),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      planName = pulumi.Input.asInput<String>(planName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      schedule = pulumi.Input.asInput<String>(schedule),
      status = pulumi.Input.asOptionalInput<String>(status),
      vaultId = pulumi.Input.asInput<String>(vaultId);

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
      backupPrefix: map['backupPrefix'] == null ? null : pulumi.Output.create<String>(map['backupPrefix'] as String),
      backupType: pulumi.Output.create<String>(map['backupType'] as String),
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      planName: pulumi.Output.create<String>(map['planName'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      schedule: pulumi.Output.create<String>(map['schedule'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vaultId: pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

