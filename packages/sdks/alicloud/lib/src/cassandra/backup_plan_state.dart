// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackupPlan resources.
class BackupPlanState {
  /// Specifies whether to activate the backup plan. Valid values: `True`, `False`. Default value: `True`.
  final pulumi.Input<bool>? active;

  /// The backup cycle. Valid values: `Friday`, `Monday`, `Saturday`, `Sunday`, `Thursday`, `Tuesday`, `Wednesday`.
  final pulumi.Input<String>? backupPeriod;

  /// The start time of the backup task each day. The time is displayed in UTC and denoted by Z.
  final pulumi.Input<String>? backupTime;

  /// The ID of the cluster for the backup.
  final pulumi.Input<String>? clusterId;

  /// The ID of the data center for the backup in the cluster.
  final pulumi.Input<String>? dataCenterId;

  /// The duration for which you want to retain the backup. Valid values: 1 to 30. Unit: days. Default value: `30`.
  final pulumi.Input<int>? retentionPeriod;

  /// Creates a new [BackupPlanState].
  /// [active] Specifies whether to activate the backup plan. Valid values: `True`, `False`. Default value: `True`.
  /// [backupPeriod] The backup cycle. Valid values: `Friday`, `Monday`, `Saturday`, `Sunday`, `Thursday`, `Tuesday`, `Wednesday`.
  /// [backupTime] The start time of the backup task each day. The time is displayed in UTC and denoted by Z.
  /// [clusterId] The ID of the cluster for the backup.
  /// [dataCenterId] The ID of the data center for the backup in the cluster.
  /// [retentionPeriod] The duration for which you want to retain the backup. Valid values: 1 to 30. Unit: days. Default value: `30`.
  BackupPlanState({
    this.active,
    this.backupPeriod,
    this.backupTime,
    this.clusterId,
    this.dataCenterId,
    this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'backupPeriod': ?backupPeriod,
      'backupTime': ?backupTime,
      'clusterId': ?clusterId,
      'dataCenterId': ?dataCenterId,
      'retentionPeriod': ?retentionPeriod,
    };
  }

  factory BackupPlanState.fromMap(Map<String, dynamic> map) {
    return BackupPlanState(
      active: (() {
        final guardedValue = map['active'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      backupPeriod: (() {
        final guardedValue = map['backupPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      backupTime: (() {
        final guardedValue = map['backupTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterId: (() {
        final guardedValue = map['clusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataCenterId: (() {
        final guardedValue = map['dataCenterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retentionPeriod: (() {
        final guardedValue = map['retentionPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
