// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_backup_policy.dart';

/// {@template pulumi_efs_backup_policy_backup_policy_args_doc}
/// The set of arguments for BackupPolicy.
/// {@endtemplate}
/// {@macro pulumi_efs_backup_policy_backup_policy_args_doc}
class BackupPolicyArgs {
  /// A backup_policy object (documented below).
  final pulumi.Input<BackupPolicyBackupPolicy> backupPolicy;
  /// The ID of the EFS file system.
  final pulumi.Input<String> fileSystemId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BackupPolicyArgs].
  /// [backupPolicy] A backup_policy object (documented below).
  /// [fileSystemId] The ID of the EFS file system.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BackupPolicyArgs({
    required BackupPolicyBackupPolicy backupPolicy,
    required String fileSystemId,
    String? region,
  }) :
      backupPolicy = pulumi.Input.asInput<BackupPolicyBackupPolicy>(backupPolicy),
      fileSystemId = pulumi.Input.asInput<String>(fileSystemId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicy': pulumi.Input.mapInputValue<BackupPolicyBackupPolicy, Map<String, dynamic>>(backupPolicy, (value) => value.toMap()),
      'fileSystemId': fileSystemId,
      'region': ?region,
    };
  }

  factory BackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BackupPolicyArgs(
      backupPolicy: BackupPolicyBackupPolicy.fromMap((map['backupPolicy'] as Map).cast<String, dynamic>()),
      fileSystemId: map['fileSystemId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

