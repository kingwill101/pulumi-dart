// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backup_get_policy_vm_get_policy_vmargs_doc}
/// Arguments for getPolicyVM.
/// {@endtemplate}
/// {@macro pulumi_backup_get_policy_vm_get_policy_vmargs_doc}
class GetPolicyVMArgs {
  /// Specifies the name of the VM Backup Policy.
  final pulumi.Input<String> name;
  /// Specifies the name of the Recovery Services Vault.
  final pulumi.Input<String> recoveryVaultName;
  /// The name of the resource group in which the VM Backup Policy resides.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPolicyVMArgs].
  /// [name] Specifies the name of the VM Backup Policy.
  /// [recoveryVaultName] Specifies the name of the Recovery Services Vault.
  /// [resourceGroupName] The name of the resource group in which the VM Backup Policy resides.
  GetPolicyVMArgs({
    required String name,
    required String recoveryVaultName,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      recoveryVaultName = pulumi.Input.asInput<String>(recoveryVaultName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'recoveryVaultName': recoveryVaultName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPolicyVMArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyVMArgs(
      name: map['name'] as String,
      recoveryVaultName: map['recoveryVaultName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

