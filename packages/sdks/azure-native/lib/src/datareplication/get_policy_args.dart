// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datareplication_get_policy_args_doc}
/// Arguments for getPolicy.
/// {@endtemplate}
/// {@macro pulumi_datareplication_get_policy_args_doc}
class GetPolicyArgs {
  /// The policy name.
  final pulumi.Input<String> policyName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The vault name.
  final pulumi.Input<String> vaultName;

  /// Creates a new [GetPolicyArgs].
  /// [policyName] The policy name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vaultName] The vault name.
  GetPolicyArgs({
    required this.policyName,
    required this.resourceGroupName,
    required this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': policyName,
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory GetPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs(
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      vaultName: pulumi.Input.fromValue(map['vaultName'] as String),
    );
  }
}
