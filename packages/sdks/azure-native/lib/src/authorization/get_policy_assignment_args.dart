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
    pulumi.Output<String>? expand,
    required pulumi.Output<String> policyAssignmentName,
    required pulumi.Output<String> scope,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      policyAssignmentName = pulumi.Input.asInput<String>(policyAssignmentName),
      scope = pulumi.Input.asInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'policyAssignmentName': policyAssignmentName,
      'scope': scope,
    };
  }

  factory GetPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyAssignmentArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      policyAssignmentName: pulumi.Output.create<String>(map['policyAssignmentName'] as String),
      scope: pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

