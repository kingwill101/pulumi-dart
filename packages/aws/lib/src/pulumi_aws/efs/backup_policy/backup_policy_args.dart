// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../backup_policy_backup_policy/backup_policy_backup_policy.dart';

/// The set of arguments for BackupPolicy.
class BackupPolicyArgs {
  /// A<span pulumi-lang-nodejs=" backupPolicy " pulumi-lang-dotnet=" BackupPolicy " pulumi-lang-go=" backupPolicy " pulumi-lang-python=" backup_policy " pulumi-lang-yaml=" backupPolicy " pulumi-lang-java=" backupPolicy "> backup_policy </span>object (documented below).
  final Input<BackupPolicyBackupPolicy> backupPolicy;

  /// The ID of the EFS file system.
  final Input<String> fileSystemId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  BackupPolicyArgs({
    required this.backupPolicy,
    required this.fileSystemId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupPolicy'] =
        Input.mapInputValue<BackupPolicyBackupPolicy, Map<String, dynamic>>(
            backupPolicy, (value) => value.toMap());
    map['fileSystemId'] = fileSystemId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory BackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BackupPolicyArgs(
      backupPolicy:
          Input.asInput<BackupPolicyBackupPolicy>(map['backupPolicy']),
      fileSystemId: Input.asInput<String>(map['fileSystemId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
