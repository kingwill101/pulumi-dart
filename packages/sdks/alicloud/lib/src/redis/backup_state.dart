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
    pulumi.Output<int>? backupId,
    pulumi.Output<int>? backupRetentionPeriod,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? status,
  }) :
      backupId = pulumi.Input.asOptionalInput<int>(backupId),
      backupRetentionPeriod = pulumi.Input.asOptionalInput<int>(backupRetentionPeriod),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      backupId: map['backupId'] == null ? null : pulumi.Output.create<int>(map['backupId'] as int),
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['backupRetentionPeriod'] as int),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

