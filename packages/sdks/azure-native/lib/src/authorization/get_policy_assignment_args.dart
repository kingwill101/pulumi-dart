// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_policy_assignment_args_doc}
/// Arguments for getPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_policy_assignment_args_doc}
class GetPolicyAssignmentArgs {
  /// Comma-separated list of additional properties to be included in the response. Supported values are 'LatestDefinitionVersion, EffectiveDefinitionVersion'.
  final pulumi.Input<String>? expand;
  /// The name of the policy assignment to get.
  final pulumi.Input<String> policyAssignmentName;
  /// The scope of the policy assignment. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}', or resource (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/[{parentResourcePath}/]{resourceType}/{resourceName}'
  final pulumi.Input<String> scope;

  /// Creates a new [GetPolicyAssignmentArgs].
  /// [expand] Comma-separated list of additional properties to be included in the response. Supported values are 'LatestDefinitionVersion, EffectiveDefinitionVersion'.
  /// [policyAssignmentName] The name of the policy assignment to get.
  /// [scope] The scope of the policy assignment. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}', or resource (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/[{parentResourcePath}/]{resourceType}/{resourceName}'
  GetPolicyAssignmentArgs({
    this.expand,
    required this.policyAssignmentName,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'policyAssignmentName': policyAssignmentName,
      'scope': scope,
    };
  }

  factory GetPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyAssignmentArgs(
      expand: map['expand'] == null ? null : (map['expand'] as String).input(),
      policyAssignmentName: (map['policyAssignmentName'] as String).input(),
      scope: (map['scope'] as String).input(),
    );
  }
}

