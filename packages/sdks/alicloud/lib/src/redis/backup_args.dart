// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_backup_backup_args_doc}
/// The set of arguments for Backup.
/// {@endtemplate}
/// {@macro pulumi_redis_backup_backup_args_doc}
class BackupArgs {
  /// The expiration period for this manual backup ranges from 7 to 730 days. When you pass in -1, it indicates that this manual backup will not expire (during the instance's lifecycle). If you do not pass any value (default case), it means the expiration policy will be consistent with the current automatic backup strategy.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? backupRetentionPeriod;

  /// InstanceId
  final pulumi.Input<String> instanceId;

  /// Creates a new [BackupArgs].
  /// [backupRetentionPeriod] The expiration period for this manual backup ranges from 7 to 730 days. When you pass in -1, it indicates that this manual backup will not expire (during the instance's lifecycle). If you do not pass any value (default case), it means the expiration policy will be consistent with the current automatic backup strategy.
  /// [instanceId] InstanceId
  BackupArgs({this.backupRetentionPeriod, required this.instanceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'instanceId': instanceId,
    };
  }

  factory BackupArgs.fromMap(Map<String, dynamic> map) {
    return BackupArgs(
      backupRetentionPeriod: (() {
        final guardedValue = map['backupRetentionPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
    );
  }
}
