// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackupPoliciesPolicy {
  /// Data backup days. Valid values: `7` to `730`.
  final pulumi.Input<int> backupRetentionPeriod;
  /// The db cluster id.
  final pulumi.Input<String> dbClusterId;
  /// The ID of the Backup Policy.
  final pulumi.Input<String> id;
  /// DBCluster Backup period.
  final pulumi.Input<List<String>> preferredBackupPeriods;
  /// Backup Time, UTC time.
  final pulumi.Input<String> preferredBackupTime;
  /// The status of the resource.
  final pulumi.Input<String> status;

  /// Creates a new [GetBackupPoliciesPolicy].
  /// [backupRetentionPeriod] Data backup days. Valid values: `7` to `730`.
  /// [dbClusterId] The db cluster id.
  /// [id] The ID of the Backup Policy.
  /// [preferredBackupPeriods] DBCluster Backup period.
  /// [preferredBackupTime] Backup Time, UTC time.
  /// [status] The status of the resource.
  GetBackupPoliciesPolicy({
    required this.backupRetentionPeriod,
    required this.dbClusterId,
    required this.id,
    required this.preferredBackupPeriods,
    required this.preferredBackupTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionPeriod': backupRetentionPeriod,
      'dbClusterId': dbClusterId,
      'id': id,
      'preferredBackupPeriods': preferredBackupPeriods,
      'preferredBackupTime': preferredBackupTime,
      'status': status,
    };
  }

  factory GetBackupPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetBackupPoliciesPolicy(
      backupRetentionPeriod: pulumi.Input.fromValue(map['backupRetentionPeriod'] as int),
      dbClusterId: pulumi.Input.fromValue(map['dbClusterId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      preferredBackupPeriods: pulumi.Input.fromValue((map['preferredBackupPeriods'] as List).cast<String>()),
      preferredBackupTime: pulumi.Input.fromValue(map['preferredBackupTime'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

