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
  const PolicyRestrictionArgs({
    this.policyRestrictionId,
    this.requireBase,
    required this.resourceGroupName,
    this.scope,
    required this.serviceName,
  });

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
      policyRestrictionId: (() { final guardedValue = map['policyRestrictionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requireBase: (() { final guardedValue = map['requireBase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
