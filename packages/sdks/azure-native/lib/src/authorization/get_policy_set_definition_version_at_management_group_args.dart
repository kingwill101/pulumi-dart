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
    this.expand,
    required this.managementGroupName,
    required this.policyDefinitionVersion,
    required this.policySetDefinitionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'managementGroupName': managementGroupName,
      'policyDefinitionVersion': policyDefinitionVersion,
      'policySetDefinitionName': policySetDefinitionName,
    };
  }

  factory GetPolicySetDefinitionVersionAtManagementGroupArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPolicySetDefinitionVersionAtManagementGroupArgs(
      expand: (() {
        final guardedValue = map['expand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managementGroupName: pulumi.Input.fromValue(
        map['managementGroupName'] as String,
      ),
      policyDefinitionVersion: pulumi.Input.fromValue(
        map['policyDefinitionVersion'] as String,
      ),
      policySetDefinitionName: pulumi.Input.fromValue(
        map['policySetDefinitionName'] as String,
      ),
    );
  }
}
