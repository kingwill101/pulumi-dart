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
    this.backupPrefix,
    this.backupType,
    this.clusterId,
    this.databaseName,
    this.planId,
    this.planName,
    this.resourceGroupId,
    this.schedule,
    this.status,
    this.vaultId,
  });

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
      backupPrefix: (() {
        final guardedValue = map['backupPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      backupType: (() {
        final guardedValue = map['backupType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterId: (() {
        final guardedValue = map['clusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databaseName: (() {
        final guardedValue = map['databaseName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      planId: (() {
        final guardedValue = map['planId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      planName: (() {
        final guardedValue = map['planName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schedule: (() {
        final guardedValue = map['schedule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vaultId: (() {
        final guardedValue = map['vaultId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
