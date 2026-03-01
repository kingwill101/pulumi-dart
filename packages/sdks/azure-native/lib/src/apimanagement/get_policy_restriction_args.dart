// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_policy_restriction_args_doc}
/// Arguments for getPolicyRestriction.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_policy_restriction_args_doc}
class GetPolicyRestrictionArgs {
  /// Policy restrictions after an entity level
  final pulumi.Input<String> policyRestrictionId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetPolicyRestrictionArgs].
  /// [policyRestrictionId] Policy restrictions after an entity level
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetPolicyRestrictionArgs({
    required pulumi.Output<String> policyRestrictionId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      policyRestrictionId = pulumi.Input.asInput<String>(policyRestrictionId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyRestrictionId': policyRestrictionId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetPolicyRestrictionArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyRestrictionArgs(
      policyRestrictionId: pulumi.Output.create<String>(map['policyRestrictionId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

