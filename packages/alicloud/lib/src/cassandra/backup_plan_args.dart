// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cassandra_backup_plan_backup_plan_args_doc}
/// The set of arguments for BackupPlan.
/// {@endtemplate}
/// {@macro pulumi_cassandra_backup_plan_backup_plan_args_doc}
class BackupPlanArgs {
  /// Specifies whether to activate the backup plan. Valid values: `True`, `False`. Default value: `True`.
  final pulumi.Input<bool>? active;
  /// The backup cycle. Valid values: `Friday`, `Monday`, `Saturday`, `Sunday`, `Thursday`, `Tuesday`, `Wednesday`.
  final pulumi.Input<String>? backupPeriod;
  /// The start time of the backup task each day. The time is displayed in UTC and denoted by Z.
  final pulumi.Input<String> backupTime;
  /// The ID of the cluster for the backup.
  final pulumi.Input<String> clusterId;
  /// The ID of the data center for the backup in the cluster.
  final pulumi.Input<String> dataCenterId;
  /// The duration for which you want to retain the backup. Valid values: 1 to 30. Unit: days. Default value: `30`.
  final pulumi.Input<int>? retentionPeriod;

  /// Creates a new [BackupPlanArgs].
  /// [active] Specifies whether to activate the backup plan. Valid values: `True`, `False`. Default value: `True`.
  /// [backupPeriod] The backup cycle. Valid values: `Friday`, `Monday`, `Saturday`, `Sunday`, `Thursday`, `Tuesday`, `Wednesday`.
  /// [backupTime] The start time of the backup task each day. The time is displayed in UTC and denoted by Z.
  /// [clusterId] The ID of the cluster for the backup.
  /// [dataCenterId] The ID of the data center for the backup in the cluster.
  /// [retentionPeriod] The duration for which you want to retain the backup. Valid values: 1 to 30. Unit: days. Default value: `30`.
  BackupPlanArgs({
    bool? active,
    String? backupPeriod,
    required String backupTime,
    required String clusterId,
    required String dataCenterId,
    int? retentionPeriod,
  }) :
      active = pulumi.Input.asOptionalInput<bool>(active),
      backupPeriod = pulumi.Input.asOptionalInput<String>(backupPeriod),
      backupTime = pulumi.Input.asInput<String>(backupTime),
      clusterId = pulumi.Input.asInput<String>(clusterId),
      dataCenterId = pulumi.Input.asInput<String>(dataCenterId),
      retentionPeriod = pulumi.Input.asOptionalInput<int>(retentionPeriod);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'backupPeriod': ?backupPeriod,
      'backupTime': backupTime,
      'clusterId': clusterId,
      'dataCenterId': dataCenterId,
      'retentionPeriod': ?retentionPeriod,
    };
  }

  factory BackupPlanArgs.fromMap(Map<String, dynamic> map) {
    return BackupPlanArgs(
      active: map['active'] == null ? null : map['active'] as bool,
      backupPeriod: map['backupPeriod'] == null ? null : map['backupPeriod'] as String,
      backupTime: map['backupTime'] as String,
      clusterId: map['clusterId'] as String,
      dataCenterId: map['dataCenterId'] as String,
      retentionPeriod: map['retentionPeriod'] == null ? null : map['retentionPeriod'] as int,
    );
  }
}

