// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_policy_definition_args_doc}
/// Arguments for getPolicyDefinition.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_policy_definition_args_doc}
class GetPolicyDefinitionArgs {
  /// The name of the policy definition to get.
  final pulumi.Input<String> policyDefinitionName;

  /// Creates a new [GetPolicyDefinitionArgs].
  /// [policyDefinitionName] The name of the policy definition to get.
  const GetPolicyDefinitionArgs({
    required this.policyDefinitionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyDefinitionName': policyDefinitionName,
    };
  }

  factory GetPolicyDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyDefinitionArgs(
      policyDefinitionName: pulumi.Input.fromValue(map['policyDefinitionName'] as String),
    );
  }
}

