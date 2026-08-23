// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_verifiedpermissions_policy_template_policy_template_args_doc}
/// The set of arguments for PolicyTemplate.
/// {@endtemplate}
/// {@macro pulumi_verifiedpermissions_policy_template_policy_template_args_doc}
class PolicyTemplateArgs {
  /// Provides a description for the policy template.
  final pulumi.Input<String>? description;
  /// The ID of the Policy Store.
  final pulumi.Input<String> policyStoreId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Defines the content of the statement, written in Cedar policy language.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> statement;

  /// Creates a new [PolicyTemplateArgs].
  /// [description] Provides a description for the policy template.
  /// [policyStoreId] The ID of the Policy Store.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [statement] Defines the content of the statement, written in Cedar policy language.
  const PolicyTemplateArgs({
    this.description,
    required this.policyStoreId,
    this.region,
    required this.statement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'policyStoreId': policyStoreId,
      'region': ?region,
      'statement': statement,
    };
  }

  factory PolicyTemplateArgs.fromMap(Map<String, dynamic> map) {
    return PolicyTemplateArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyStoreId: pulumi.Input.fromValue(map['policyStoreId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statement: pulumi.Input.fromValue(map['statement'] as String),
    );
  }
}
