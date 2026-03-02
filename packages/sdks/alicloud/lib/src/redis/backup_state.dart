// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Backup resources.
class BackupState {
  /// Backup ID.
  final pulumi.Input<int>? backupId;
  /// The expiration period for this manual backup ranges from 7 to 730 days. When you pass in -1, it indicates that this manual backup will not expire (during the instance's lifecycle). If you do not pass any value (default case), it means the expiration policy will be consistent with the current automatic backup strategy.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? backupRetentionPeriod;
  /// InstanceId
  final pulumi.Input<String>? instanceId;
  /// Backup status.
  final pulumi.Input<String>? status;

  /// Creates a new [BackupState].
  /// [backupId] Backup ID.
  /// [backupRetentionPeriod] The expiration period for this manual backup ranges from 7 to 730 days. When you pass in -1, it indicates that this manual backup will not expire (during the instance's lifecycle). If you do not pass any value (default case), it means the expiration policy will be consistent with the current automatic backup strategy.
  /// [instanceId] InstanceId
  /// [status] Backup status.
  BackupState({
    this.backupId,
    this.backupRetentionPeriod,
    this.instanceId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': ?backupId,
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'instanceId': ?instanceId,
      'status': ?status,
    };
  }

  factory BackupState.fromMap(Map<String, dynamic> map) {
    return BackupState(
      backupId: map['backupId'] == null ? null : (map['backupId'] as int).input(),
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : (map['backupRetentionPeriod'] as int).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

