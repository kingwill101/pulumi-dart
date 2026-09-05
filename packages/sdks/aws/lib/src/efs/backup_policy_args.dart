// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_backup_policy.dart';

/// {@template pulumi_efs_backup_policy_backup_policy_args_doc}
/// The set of arguments for BackupPolicy.
/// {@endtemplate}
/// {@macro pulumi_efs_backup_policy_backup_policy_args_doc}
class BackupPolicyArgs {
  /// A backupPolicy object (documented below).
  final pulumi.Input<BackupPolicyBackupPolicy> backupPolicy;
  /// The ID of the EFS file system.
  final pulumi.Input<String> fileSystemId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [BackupPolicyArgs].
  /// [backupPolicy] A backupPolicy object (documented below).
  /// [fileSystemId] The ID of the EFS file system.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const BackupPolicyArgs({
    required this.backupPolicy,
    required this.fileSystemId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicy': pulumi.Input.mapInputValue<BackupPolicyBackupPolicy, Map<String, dynamic>>(backupPolicy, (value) => value.toMap()),
      'fileSystemId': fileSystemId,
      'region': ?region,
    };
  }

  factory BackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BackupPolicyArgs(
      backupPolicy: pulumi.Input.fromValue(BackupPolicyBackupPolicy.fromMap((map['backupPolicy']! as Map).cast<String, dynamic>())),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
