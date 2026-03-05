// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackupPolicy resources.
class BackupPolicyState {
  /// Backup Cycle. Allowed values: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.
  final pulumi.Input<List<String>>? backupPeriods;
  /// Backup time, in the format of HH:mmZ- HH:mm Z.
  final pulumi.Input<String>? backupTime;
  /// The id of Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance.
  final pulumi.Input<String>? instanceId;

  /// Creates a new [BackupPolicyState].
  /// [backupPeriods] Backup Cycle. Allowed values: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.
  /// [backupTime] Backup time, in the format of HH:mmZ- HH:mm Z.
  /// [instanceId] The id of Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance.
  BackupPolicyState({
    this.backupPeriods,
    this.backupTime,
    this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPeriods': ?backupPeriods,
      'backupTime': ?backupTime,
      'instanceId': ?instanceId,
    };
  }

  factory BackupPolicyState.fromMap(Map<String, dynamic> map) {
    return BackupPolicyState(
      backupPeriods: (() { final guardedValue = map['backupPeriods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      backupTime: (() { final guardedValue = map['backupTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

