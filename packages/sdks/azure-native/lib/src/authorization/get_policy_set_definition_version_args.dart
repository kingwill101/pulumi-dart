// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_policy_set_definition_version_args_doc}
/// Arguments for getPolicySetDefinitionVersion.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_policy_set_definition_version_args_doc}
class GetPolicySetDefinitionVersionArgs {
  /// Comma-separated list of additional properties to be included in the response. Supported values are 'LatestDefinitionVersion, EffectiveDefinitionVersion'.
  final pulumi.Input<String>? expand;
  /// The policy set definition version.  The format is x.y.z where x is the major version number, y is the minor version number, and z is the patch number
  final pulumi.Input<String> policyDefinitionVersion;
  /// The name of the policy set definition.
  final pulumi.Input<String> policySetDefinitionName;

  /// Creates a new [GetPolicySetDefinitionVersionArgs].
  /// [expand] Comma-separated list of additional properties to be included in the response. Supported values are 'LatestDefinitionVersion, EffectiveDefinitionVersion'.
  /// [policyDefinitionVersion] The policy set definition version.  The format is x.y.z where x is the major version number, y is the minor version number, and z is the patch number
  /// [policySetDefinitionName] The name of the policy set definition.
  GetPolicySetDefinitionVersionArgs({
    this.expand,
    required this.policyDefinitionVersion,
    required this.policySetDefinitionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'policyDefinitionVersion': policyDefinitionVersion,
      'policySetDefinitionName': policySetDefinitionName,
    };
  }

  factory GetPolicySetDefinitionVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicySetDefinitionVersionArgs(
      expand: map['expand'] == null ? null : (map['expand']! as String).input(),
      policyDefinitionVersion: (map['policyDefinitionVersion'] as String).input(),
      policySetDefinitionName: (map['policySetDefinitionName'] as String).input(),
    );
  }
}

