// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_policy_args_doc}
/// Arguments for getPolicy.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_policy_args_doc}
class GetPolicyArgs {
  /// The name of the CdnWebApplicationFirewallPolicy.
  final pulumi.Input<String> policyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPolicyArgs].
  /// [policyName] The name of the CdnWebApplicationFirewallPolicy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPolicyArgs({
    required String policyName,
    required String resourceGroupName,
  }) :
      policyName = pulumi.Input.asInput<String>(policyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': policyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs(
      policyName: map['policyName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

