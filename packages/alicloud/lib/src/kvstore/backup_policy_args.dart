// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kvstore_backup_policy_backup_policy_args_doc}
/// The set of arguments for BackupPolicy.
/// {@endtemplate}
/// {@macro pulumi_kvstore_backup_policy_backup_policy_args_doc}
class BackupPolicyArgs {
  /// Backup Cycle. Allowed values: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.
  final pulumi.Input<List<String>>? backupPeriods;
  /// Backup time, in the format of HH:mmZ- HH:mm Z.
  final pulumi.Input<String>? backupTime;
  /// The id of Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance.
  final pulumi.Input<String> instanceId;

  /// Creates a new [BackupPolicyArgs].
  /// [backupPeriods] Backup Cycle. Allowed values: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.
  /// [backupTime] Backup time, in the format of HH:mmZ- HH:mm Z.
  /// [instanceId] The id of Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance.
  BackupPolicyArgs({
    List<String>? backupPeriods,
    String? backupTime,
    required String instanceId,
  }) :
      backupPeriods = pulumi.Input.asOptionalInput<List<String>>(backupPeriods),
      backupTime = pulumi.Input.asOptionalInput<String>(backupTime),
      instanceId = pulumi.Input.asInput<String>(instanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPeriods': ?backupPeriods,
      'backupTime': ?backupTime,
      'instanceId': instanceId,
    };
  }

  factory BackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BackupPolicyArgs(
      backupPeriods: map['backupPeriods'] == null ? null : (map['backupPeriods'] as List).cast<String>(),
      backupTime: map['backupTime'] == null ? null : map['backupTime'] as String,
      instanceId: map['instanceId'] as String,
    );
  }
}

