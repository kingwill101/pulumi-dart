// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackupPlansPlan {
  /// Specifies whether to activate the backup plan.
  final pulumi.Input<bool> active;
  /// The backup cycle. Valid values: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, and Sunday.
  final pulumi.Input<String> backupPeriod;
  /// The start time of the backup task each day. The time is displayed in UTC and denoted by Z.
  final pulumi.Input<String> backupTime;
  /// The ID of the cluster for the backup.
  final pulumi.Input<String> clusterId;
  /// The time when the backup plan was created.
  final pulumi.Input<String> createTime;
  /// The ID of the data center for the backup in the cluster.
  final pulumi.Input<String> dataCenterId;
  /// The ID of the Backup Plan.
  final pulumi.Input<String> id;
  /// The duration for which you want to retain the backup. Valid values: 1 to 30. Unit: days.
  final pulumi.Input<int> retentionPeriod;

  /// Creates a new [GetBackupPlansPlan].
  /// [active] Specifies whether to activate the backup plan.
  /// [backupPeriod] The backup cycle. Valid values: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, and Sunday.
  /// [backupTime] The start time of the backup task each day. The time is displayed in UTC and denoted by Z.
  /// [clusterId] The ID of the cluster for the backup.
  /// [createTime] The time when the backup plan was created.
  /// [dataCenterId] The ID of the data center for the backup in the cluster.
  /// [id] The ID of the Backup Plan.
  /// [retentionPeriod] The duration for which you want to retain the backup. Valid values: 1 to 30. Unit: days.
  GetBackupPlansPlan({
    required this.active,
    required this.backupPeriod,
    required this.backupTime,
    required this.clusterId,
    required this.createTime,
    required this.dataCenterId,
    required this.id,
    required this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'backupPeriod': backupPeriod,
      'backupTime': backupTime,
      'clusterId': clusterId,
      'createTime': createTime,
      'dataCenterId': dataCenterId,
      'id': id,
      'retentionPeriod': retentionPeriod,
    };
  }

  factory GetBackupPlansPlan.fromMap(Map<String, dynamic> map) {
    return GetBackupPlansPlan(
      active: pulumi.Input.fromValue(map['active'] as bool),
      backupPeriod: pulumi.Input.fromValue(map['backupPeriod'] as String),
      backupTime: pulumi.Input.fromValue(map['backupTime'] as String),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dataCenterId: pulumi.Input.fromValue(map['dataCenterId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      retentionPeriod: pulumi.Input.fromValue(map['retentionPeriod'] as int),
    );
  }
}

