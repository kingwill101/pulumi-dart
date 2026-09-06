// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_policy_set_definition_args_doc}
/// Arguments for getPolicySetDefinition.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_policy_set_definition_args_doc}
class GetPolicySetDefinitionArgs {
  /// Comma-separated list of additional properties to be included in the response. Supported values are 'LatestDefinitionVersion, EffectiveDefinitionVersion'.
  final pulumi.Input<String?>? expand;
  /// The name of the policy set definition to get.
  final pulumi.Input<String> policySetDefinitionName;

  /// Creates a new [GetPolicySetDefinitionArgs].
  /// [expand] Comma-separated list of additional properties to be included in the response. Supported values are 'LatestDefinitionVersion, EffectiveDefinitionVersion'.
  /// [policySetDefinitionName] The name of the policy set definition to get.
  const GetPolicySetDefinitionArgs({
    this.expand,
    required this.policySetDefinitionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'policySetDefinitionName': policySetDefinitionName,
    };
  }

  factory GetPolicySetDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicySetDefinitionArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policySetDefinitionName: pulumi.Input.fromValue(map['policySetDefinitionName'] as String),
    );
  }
}
