// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_backup_policy_get_backup_policy_args_doc}
/// Arguments for getBackupPolicy.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_backup_policy_get_backup_policy_args_doc}
class GetBackupPolicyArgs {
  /// The name of the NetApp Account in which the NetApp Policy exists.
  final pulumi.Input<String> accountName;
  /// The name of the NetApp Backup Policy.
  final pulumi.Input<String> name;
  /// The name of the resource group where the NetApp Backup Policy exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBackupPolicyArgs].
  /// [accountName] The name of the NetApp Account in which the NetApp Policy exists.
  /// [name] The name of the NetApp Backup Policy.
  /// [resourceGroupName] The name of the resource group where the NetApp Backup Policy exists.
  GetBackupPolicyArgs({
    required String accountName,
    required String name,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupPolicyArgs(
      accountName: map['accountName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

