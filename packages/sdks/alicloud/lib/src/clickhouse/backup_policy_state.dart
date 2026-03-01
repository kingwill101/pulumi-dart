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
    pulumi.Output<int>? backupRetentionPeriod,
    pulumi.Output<String>? dbClusterId,
    pulumi.Output<List<String>>? preferredBackupPeriods,
    pulumi.Output<String>? preferredBackupTime,
    pulumi.Output<String>? status,
  }) :
      backupRetentionPeriod = pulumi.Input.asOptionalInput<int>(backupRetentionPeriod),
      dbClusterId = pulumi.Input.asOptionalInput<String>(dbClusterId),
      preferredBackupPeriods = pulumi.Input.asOptionalInput<List<String>>(preferredBackupPeriods),
      preferredBackupTime = pulumi.Input.asOptionalInput<String>(preferredBackupTime),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['backupRetentionPeriod'] as int),
      dbClusterId: map['dbClusterId'] == null ? null : pulumi.Output.create<String>(map['dbClusterId'] as String),
      preferredBackupPeriods: map['preferredBackupPeriods'] == null ? null : pulumi.Output.create<List<String>>((map['preferredBackupPeriods'] as List).cast<String>()),
      preferredBackupTime: map['preferredBackupTime'] == null ? null : pulumi.Output.create<String>(map['preferredBackupTime'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

