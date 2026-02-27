// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../backup_policy_backup_policy/backup_policy_backup_policy.dart';

/// The set of arguments for BackupPolicy.
class BackupPolicyArgs {
  /// A backup_policy object (documented below).
  final pulumi.Input<BackupPolicyBackupPolicy> backupPolicy;

  /// The ID of the EFS file system.
  final pulumi.Input<String> fileSystemId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  BackupPolicyArgs({
    required this.backupPolicy,
    required this.fileSystemId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupPolicy'] = pulumi.Input.mapInputValue<BackupPolicyBackupPolicy,
        Map<String, dynamic>>(backupPolicy, (value) => value.toMap());
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
          pulumi.Input.asInput<BackupPolicyBackupPolicy>(map['backupPolicy']),
      fileSystemId: pulumi.Input.asInput<String>(map['fileSystemId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
