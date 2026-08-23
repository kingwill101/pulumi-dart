// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_policy_definition_version_args_doc}
/// Arguments for getPolicyDefinitionVersion.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_policy_definition_version_args_doc}
class GetPolicyDefinitionVersionArgs {
  /// The name of the policy definition.
  final pulumi.Input<String> policyDefinitionName;
  /// The policy definition version.  The format is x.y.z where x is the major version number, y is the minor version number, and z is the patch number
  final pulumi.Input<String> policyDefinitionVersion;

  /// Creates a new [GetPolicyDefinitionVersionArgs].
  /// [policyDefinitionName] The name of the policy definition.
  /// [policyDefinitionVersion] The policy definition version.  The format is x.y.z where x is the major version number, y is the minor version number, and z is the patch number
  const GetPolicyDefinitionVersionArgs({
    required this.policyDefinitionName,
    required this.policyDefinitionVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyDefinitionName': policyDefinitionName,
      'policyDefinitionVersion': policyDefinitionVersion,
    };
  }

  factory GetPolicyDefinitionVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyDefinitionVersionArgs(
      policyDefinitionName: pulumi.Input.fromValue(map['policyDefinitionName'] as String),
      policyDefinitionVersion: pulumi.Input.fromValue(map['policyDefinitionVersion'] as String),
    );
  }
}
