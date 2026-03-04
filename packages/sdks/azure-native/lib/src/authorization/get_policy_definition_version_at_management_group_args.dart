// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_policy_definition_version_at_management_group_args_doc}
/// Arguments for getPolicyDefinitionVersionAtManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_policy_definition_version_at_management_group_args_doc}
class GetPolicyDefinitionVersionAtManagementGroupArgs {
  /// The name of the management group. The name is case insensitive.
  final pulumi.Input<String> managementGroupName;

  /// The name of the policy definition.
  final pulumi.Input<String> policyDefinitionName;

  /// The policy definition version.  The format is x.y.z where x is the major version number, y is the minor version number, and z is the patch number
  final pulumi.Input<String> policyDefinitionVersion;

  /// Creates a new [GetPolicyDefinitionVersionAtManagementGroupArgs].
  /// [managementGroupName] The name of the management group. The name is case insensitive.
  /// [policyDefinitionName] The name of the policy definition.
  /// [policyDefinitionVersion] The policy definition version.  The format is x.y.z where x is the major version number, y is the minor version number, and z is the patch number
  GetPolicyDefinitionVersionAtManagementGroupArgs({
    required this.managementGroupName,
    required this.policyDefinitionName,
    required this.policyDefinitionVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupName': managementGroupName,
      'policyDefinitionName': policyDefinitionName,
      'policyDefinitionVersion': policyDefinitionVersion,
    };
  }

  factory GetPolicyDefinitionVersionAtManagementGroupArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPolicyDefinitionVersionAtManagementGroupArgs(
      managementGroupName: pulumi.Input.fromValue(
        map['managementGroupName'] as String,
      ),
      policyDefinitionName: pulumi.Input.fromValue(
        map['policyDefinitionName'] as String,
      ),
      policyDefinitionVersion: pulumi.Input.fromValue(
        map['policyDefinitionVersion'] as String,
      ),
    );
  }
}
