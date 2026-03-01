// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HanaBackupPlan resources.
class HanaBackupPlanState {
  /// The backup prefix.
  final pulumi.Input<String>? backupPrefix;
  /// The backup type. Valid values:
  /// - `COMPLETE`: full backup.
  /// - `INCREMENTAL`: incremental backup.
  /// - `DIFFERENTIAL`: differential backup.
  final pulumi.Input<String>? backupType;
  /// The ID of the SAP HANA instance.
  final pulumi.Input<String>? clusterId;
  /// The name of the database.
  final pulumi.Input<String>? databaseName;
  /// The id of the plan.
  final pulumi.Input<String>? planId;
  /// The name of the backup plan.
  final pulumi.Input<String>? planName;
  /// The resource attribute field that represents the resource group ID.
  final pulumi.Input<String>? resourceGroupId;
  /// The backup policy. Format: `I|{startTime}|{interval}`. The system runs the first backup job at a point in time that is specified in the {startTime} parameter and the subsequent backup jobs at an interval that is specified in the {interval} parameter. The system does not run a backup job before the specified point in time. Each backup job, except the first one, starts only after the previous backup job is completed. For example, I|1631685600|P1D specifies that the system runs the first backup job at 14:00:00 on September 15, 2021 and the subsequent backup jobs once a day.
  final pulumi.Input<String>? schedule;
  /// The status of the resource. Valid values: `Enabled`, `Disabled`.
  final pulumi.Input<String>? status;
  /// The ID of the backup vault.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [HanaBackupPlanState].
  /// [backupPrefix] The backup prefix.
  /// [backupType] The backup type. Valid values:
  /// [clusterId] The ID of the SAP HANA instance.
  /// [databaseName] The name of the database.
  /// [planId] The id of the plan.
  /// [planName] The name of the backup plan.
  /// [resourceGroupId] The resource attribute field that represents the resource group ID.
  /// [schedule] The backup policy. Format: `I|{startTime}|{interval}`. The system runs the first backup job at a point in time that is specified in the {startTime} parameter and the subsequent backup jobs at an interval that is specified in the {interval} parameter. The system does not run a backup job before the specified point in time. Each backup job, except the first one, starts only after the previous backup job is completed. For example, I|1631685600|P1D specifies that the system runs the first backup job at 14:00:00 on September 15, 2021 and the subsequent backup jobs once a day.
  /// [status] The status of the resource. Valid values: `Enabled`, `Disabled`.
  /// [vaultId] The ID of the backup vault.
  HanaBackupPlanState({
    pulumi.Output<String>? backupPrefix,
    pulumi.Output<String>? backupType,
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? databaseName,
    pulumi.Output<String>? planId,
    pulumi.Output<String>? planName,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? schedule,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vaultId,
  }) :
      backupPrefix = pulumi.Input.asOptionalInput<String>(backupPrefix),
      backupType = pulumi.Input.asOptionalInput<String>(backupType),
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      planId = pulumi.Input.asOptionalInput<String>(planId),
      planName = pulumi.Input.asOptionalInput<String>(planName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      schedule = pulumi.Input.asOptionalInput<String>(schedule),
      status = pulumi.Input.asOptionalInput<String>(status),
      vaultId = pulumi.Input.asOptionalInput<String>(vaultId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPrefix': ?backupPrefix,
      'backupType': ?backupType,
      'clusterId': ?clusterId,
      'databaseName': ?databaseName,
      'planId': ?planId,
      'planName': ?planName,
      'resourceGroupId': ?resourceGroupId,
      'schedule': ?schedule,
      'status': ?status,
      'vaultId': ?vaultId,
    };
  }

  factory HanaBackupPlanState.fromMap(Map<String, dynamic> map) {
    return HanaBackupPlanState(
      backupPrefix: map['backupPrefix'] == null ? null : pulumi.Output.create<String>(map['backupPrefix'] as String),
      backupType: map['backupType'] == null ? null : pulumi.Output.create<String>(map['backupType'] as String),
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      planId: map['planId'] == null ? null : pulumi.Output.create<String>(map['planId'] as String),
      planName: map['planName'] == null ? null : pulumi.Output.create<String>(map['planName'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<String>(map['schedule'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vaultId: map['vaultId'] == null ? null : pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

