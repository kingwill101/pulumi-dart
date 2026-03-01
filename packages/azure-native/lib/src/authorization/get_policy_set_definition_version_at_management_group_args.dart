// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_policy_set_definition_version_at_management_group_args_doc}
/// Arguments for getPolicySetDefinitionVersionAtManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_policy_set_definition_version_at_management_group_args_doc}
class GetPolicySetDefinitionVersionAtManagementGroupArgs {
  /// Comma-separated list of additional properties to be included in the response. Supported values are 'LatestDefinitionVersion, EffectiveDefinitionVersion'.
  final pulumi.Input<String>? expand;
  /// The name of the management group. The name is case insensitive.
  final pulumi.Input<String> managementGroupName;
  /// The policy set definition version.  The format is x.y.z where x is the major version number, y is the minor version number, and z is the patch number
  final pulumi.Input<String> policyDefinitionVersion;
  /// The name of the policy set definition.
  final pulumi.Input<String> policySetDefinitionName;

  /// Creates a new [GetPolicySetDefinitionVersionAtManagementGroupArgs].
  /// [expand] Comma-separated list of additional properties to be included in the response. Supported values are 'LatestDefinitionVersion, EffectiveDefinitionVersion'.
  /// [managementGroupName] The name of the management group. The name is case insensitive.
  /// [policyDefinitionVersion] The policy set definition version.  The format is x.y.z where x is the major version number, y is the minor version number, and z is the patch number
  /// [policySetDefinitionName] The name of the policy set definition.
  GetPolicySetDefinitionVersionAtManagementGroupArgs({
    String? expand,
    required String managementGroupName,
    required String policyDefinitionVersion,
    required String policySetDefinitionName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      managementGroupName = pulumi.Input.asInput<String>(managementGroupName),
      policyDefinitionVersion = pulumi.Input.asInput<String>(policyDefinitionVersion),
      policySetDefinitionName = pulumi.Input.asInput<String>(policySetDefinitionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'managementGroupName': managementGroupName,
      'policyDefinitionVersion': policyDefinitionVersion,
      'policySetDefinitionName': policySetDefinitionName,
    };
  }

  factory GetPolicySetDefinitionVersionAtManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicySetDefinitionVersionAtManagementGroupArgs(
      expand: map['expand'] == null ? null : map['expand'] as String,
      managementGroupName: map['managementGroupName'] as String,
      policyDefinitionVersion: map['policyDefinitionVersion'] as String,
      policySetDefinitionName: map['policySetDefinitionName'] as String,
    );
  }
}

