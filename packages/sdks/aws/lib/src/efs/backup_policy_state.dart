// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_backup_policy.dart';

/// Input properties used for looking up and filtering BackupPolicy resources.
class BackupPolicyState {
  /// A backupPolicy object (documented below).
  final pulumi.Input<BackupPolicyBackupPolicy>? backupPolicy;
  /// The ID of the EFS file system.
  final pulumi.Input<String>? fileSystemId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BackupPolicyState].
  /// [backupPolicy] A backupPolicy object (documented below).
  /// [fileSystemId] The ID of the EFS file system.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const BackupPolicyState({
    this.backupPolicy,
    this.fileSystemId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicy': ?pulumi.Input.mapOptionalInputValue<BackupPolicyBackupPolicy, Map<String, dynamic>>(backupPolicy, (value) => value.toMap()),
      'fileSystemId': ?fileSystemId,
      'region': ?region,
    };
  }

  factory BackupPolicyState.fromMap(Map<String, dynamic> map) {
    return BackupPolicyState(
      backupPolicy: (() { final guardedValue = map['backupPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupPolicyBackupPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
