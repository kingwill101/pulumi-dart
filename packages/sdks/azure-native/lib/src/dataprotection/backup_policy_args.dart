// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_dataprotection.dart';

/// {@template pulumi_dataprotection_backup_policy_args_doc}
/// The set of arguments for BackupPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_backup_policy_args_doc}
class BackupPolicyArgs {
  /// Name of the policy
  final pulumi.Input<String>? backupPolicyName;
  /// BaseBackupPolicyResource properties
  final pulumi.Input<BackupPolicyDataprotection>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the backup vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [BackupPolicyArgs].
  /// [backupPolicyName] Name of the policy
  /// [properties] BaseBackupPolicyResource properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vaultName] The name of the backup vault.
  BackupPolicyArgs({
    pulumi.Output<String>? backupPolicyName,
    pulumi.Output<BackupPolicyDataprotection>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vaultName,
  }) :
      backupPolicyName = pulumi.Input.asOptionalInput<String>(backupPolicyName),
      properties = pulumi.Input.asOptionalInput<BackupPolicyDataprotection>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyName': ?backupPolicyName,
      'properties': ?properties,
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory BackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BackupPolicyArgs(
      backupPolicyName: map['backupPolicyName'] == null ? null : pulumi.Output.create<String>(map['backupPolicyName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<BackupPolicyDataprotection>(map['properties'] as BackupPolicyDataprotection),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vaultName: pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

