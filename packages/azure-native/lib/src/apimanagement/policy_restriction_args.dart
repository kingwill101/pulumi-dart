// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_policy_restriction_args_doc}
/// The set of arguments for PolicyRestriction.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_policy_restriction_args_doc}
class PolicyRestrictionArgs {
  /// Policy restrictions after an entity level
  final pulumi.Input<String>? policyRestrictionId;
  /// Indicates if base policy should be enforced for the policy document.
  final pulumi.Input<String>? requireBase;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Path to the policy document.
  final pulumi.Input<String>? scope;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [PolicyRestrictionArgs].
  /// [policyRestrictionId] Policy restrictions after an entity level
  /// [requireBase] Indicates if base policy should be enforced for the policy document.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scope] Path to the policy document.
  /// [serviceName] The name of the API Management service.
  PolicyRestrictionArgs({
    String? policyRestrictionId,
    String? requireBase,
    required String resourceGroupName,
    String? scope,
    required String serviceName,
  }) :
      policyRestrictionId = pulumi.Input.asOptionalInput<String>(policyRestrictionId),
      requireBase = pulumi.Input.asOptionalInput<String>(requireBase),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyRestrictionId': ?policyRestrictionId,
      'requireBase': ?requireBase,
      'resourceGroupName': resourceGroupName,
      'scope': ?scope,
      'serviceName': serviceName,
    };
  }

  factory PolicyRestrictionArgs.fromMap(Map<String, dynamic> map) {
    return PolicyRestrictionArgs(
      policyRestrictionId: map['policyRestrictionId'] == null ? null : map['policyRestrictionId'] as String,
      requireBase: map['requireBase'] == null ? null : map['requireBase'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

