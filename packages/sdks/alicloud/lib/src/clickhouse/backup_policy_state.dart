// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackupPolicy resources.
class BackupPolicyState {
  /// Data backup days. Valid values: `7` to `730`.
  final pulumi.Input<int>? backupRetentionPeriod;
  /// The id of the DBCluster.
  final pulumi.Input<String>? dbClusterId;
  /// DBCluster Backup period. A list of DBCluster Backup period. Valid values: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].
  final pulumi.Input<List<String>>? preferredBackupPeriods;
  /// DBCluster backup time, in the format of `HH:mmZ-HH:mmZ`. Time setting interval is one hour. China time is 8 hours behind it.
  final pulumi.Input<String>? preferredBackupTime;
  /// The status of the resource.
  final pulumi.Input<String>? status;

  /// Creates a new [BackupPolicyState].
  /// [backupRetentionPeriod] Data backup days. Valid values: `7` to `730`.
  /// [dbClusterId] The id of the DBCluster.
  /// [preferredBackupPeriods] DBCluster Backup period. A list of DBCluster Backup period. Valid values: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].
  /// [preferredBackupTime] DBCluster backup time, in the format of `HH:mmZ-HH:mmZ`. Time setting interval is one hour. China time is 8 hours behind it.
  /// [status] The status of the resource.
  BackupPolicyState({
    this.backupRetentionPeriod,
    this.dbClusterId,
    this.preferredBackupPeriods,
    this.preferredBackupTime,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'dbClusterId': ?dbClusterId,
      'preferredBackupPeriods': ?preferredBackupPeriods,
      'preferredBackupTime': ?preferredBackupTime,
      'status': ?status,
    };
  }

  factory BackupPolicyState.fromMap(Map<String, dynamic> map) {
    return BackupPolicyState(
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : (map['backupRetentionPeriod']! as int).input(),
      dbClusterId: map['dbClusterId'] == null ? null : (map['dbClusterId']! as String).input(),
      preferredBackupPeriods: map['preferredBackupPeriods'] == null ? null : ((map['preferredBackupPeriods']! as List).cast<String>()).input(),
      preferredBackupTime: map['preferredBackupTime'] == null ? null : (map['preferredBackupTime']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

