// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_backup_policy.dart';

/// Input properties used for looking up and filtering BackupPolicy resources.
class BackupPolicyState {
  /// A backup_policy object (documented below).
  final pulumi.Input<BackupPolicyBackupPolicy>? backupPolicy;
  /// The ID of the EFS file system.
  final pulumi.Input<String>? fileSystemId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BackupPolicyState].
  /// [backupPolicy] A backup_policy object (documented below).
  /// [fileSystemId] The ID of the EFS file system.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BackupPolicyState({
    pulumi.Output<BackupPolicyBackupPolicy>? backupPolicy,
    pulumi.Output<String>? fileSystemId,
    pulumi.Output<String>? region,
  }) :
      backupPolicy = pulumi.Input.asOptionalInput<BackupPolicyBackupPolicy>(backupPolicy),
      fileSystemId = pulumi.Input.asOptionalInput<String>(fileSystemId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicy': ?pulumi.Input.mapOptionalInputValue<BackupPolicyBackupPolicy, Map<String, dynamic>>(backupPolicy, (value) => value.toMap()),
      'fileSystemId': ?fileSystemId,
      'region': ?region,
    };
  }

  factory BackupPolicyState.fromMap(Map<String, dynamic> map) {
    return BackupPolicyState(
      backupPolicy: map['backupPolicy'] == null ? null : pulumi.Output.create<BackupPolicyBackupPolicy>(BackupPolicyBackupPolicy.fromMap((map['backupPolicy'] as Map).cast<String, dynamic>())),
      fileSystemId: map['fileSystemId'] == null ? null : pulumi.Output.create<String>(map['fileSystemId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

