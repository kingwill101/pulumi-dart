// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataprotection_get_backup_policy_args_doc}
/// Arguments for getBackupPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_get_backup_policy_args_doc}
class GetBackupPolicyArgs {
  final pulumi.Input<String> backupPolicyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the backup vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [GetBackupPolicyArgs].
  /// [backupPolicyName] Required.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vaultName] The name of the backup vault.
  GetBackupPolicyArgs({
    required pulumi.Output<String> backupPolicyName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vaultName,
  }) :
      backupPolicyName = pulumi.Input.asInput<String>(backupPolicyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyName': backupPolicyName,
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory GetBackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupPolicyArgs(
      backupPolicyName: pulumi.Output.create<String>(map['backupPolicyName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vaultName: pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

