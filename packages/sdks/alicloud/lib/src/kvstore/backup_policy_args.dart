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
    this.backupPeriods,
    this.backupTime,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPeriods': ?backupPeriods,
      'backupTime': ?backupTime,
      'instanceId': instanceId,
    };
  }

  factory BackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BackupPolicyArgs(
      backupPeriods: (() { final guardedValue = map['backupPeriods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      backupTime: (() { final guardedValue = map['backupTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
    );
  }
}

