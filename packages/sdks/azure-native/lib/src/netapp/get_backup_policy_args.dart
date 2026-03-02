// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_backup_policy_args_doc}
/// Arguments for getBackupPolicy.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_backup_policy_args_doc}
class GetBackupPolicyArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// Backup policy Name which uniquely identify backup policy.
  final pulumi.Input<String> backupPolicyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBackupPolicyArgs].
  /// [accountName] The name of the NetApp account
  /// [backupPolicyName] Backup policy Name which uniquely identify backup policy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetBackupPolicyArgs({
    required this.accountName,
    required this.backupPolicyName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'backupPolicyName': backupPolicyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupPolicyArgs(
      accountName: (map['accountName'] as String).input(),
      backupPolicyName: (map['backupPolicyName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

