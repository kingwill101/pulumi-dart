// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_entry.dart';

/// {@template pulumi_keyvault_access_policy_args_doc}
/// The set of arguments for AccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_keyvault_access_policy_args_doc}
class AccessPolicyArgs {
  /// The definition of the access policy.
  final pulumi.Input<AccessPolicyEntry> policy;
  /// Name of the resource group that contains the vault.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the Key Vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [AccessPolicyArgs].
  /// [policy] The definition of the access policy.
  /// [resourceGroupName] Name of the resource group that contains the vault.
  /// [vaultName] Name of the Key Vault.
  AccessPolicyArgs({
    required AccessPolicyEntry policy,
    required String resourceGroupName,
    required String vaultName,
  }) :
      policy = pulumi.Input.asInput<AccessPolicyEntry>(policy),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': pulumi.Input.mapInputValue<AccessPolicyEntry, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory AccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AccessPolicyArgs(
      policy: AccessPolicyEntry.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      vaultName: map['vaultName'] as String,
    );
  }
}

