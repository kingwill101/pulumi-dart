// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_policy_exemption_args_doc}
/// Arguments for getPolicyExemption.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_policy_exemption_args_doc}
class GetPolicyExemptionArgs {
  /// The name of the policy exemption to delete.
  final pulumi.Input<String> policyExemptionName;

  /// The scope of the policy exemption. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}', or resource (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/[{parentResourcePath}/]{resourceType}/{resourceName}'
  final pulumi.Input<String> scope;

  /// Creates a new [GetPolicyExemptionArgs].
  /// [policyExemptionName] The name of the policy exemption to delete.
  /// [scope] The scope of the policy exemption. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}', or resource (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/[{parentResourcePath}/]{resourceType}/{resourceName}'
  GetPolicyExemptionArgs({
    required this.policyExemptionName,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyExemptionName': policyExemptionName,
      'scope': scope,
    };
  }

  factory GetPolicyExemptionArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyExemptionArgs(
      policyExemptionName: pulumi.Input.fromValue(
        map['policyExemptionName'] as String,
      ),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
