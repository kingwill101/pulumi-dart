// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_protection_policy_args_doc}
/// Arguments for getProtectionPolicy.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_protection_policy_args_doc}
class GetProtectionPolicyArgs {
  /// Backup policy information to be fetched.
  final pulumi.Input<String> policyName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [GetProtectionPolicyArgs].
  /// [policyName] Backup policy information to be fetched.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [vaultName] The name of the recovery services vault.
  GetProtectionPolicyArgs({
    required String policyName,
    required String resourceGroupName,
    required String vaultName,
  }) :
      policyName = pulumi.Input.asInput<String>(policyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': policyName,
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory GetProtectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetProtectionPolicyArgs(
      policyName: map['policyName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      vaultName: map['vaultName'] as String,
    );
  }
}

