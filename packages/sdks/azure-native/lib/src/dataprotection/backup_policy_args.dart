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
  const BackupPolicyArgs({
    this.backupPolicyName,
    this.properties,
    required this.resourceGroupName,
    required this.vaultName,
  });

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
      backupPolicyName: (() { final guardedValue = map['backupPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as BackupPolicyDataprotection); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      vaultName: pulumi.Input.fromValue(map['vaultName'] as String),
    );
  }
}
