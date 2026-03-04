// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_codecommit_approval_rule_template_approval_rule_template_args_doc}
/// The set of arguments for ApprovalRuleTemplate.
/// {@endtemplate}
/// {@macro pulumi_codecommit_approval_rule_template_approval_rule_template_args_doc}
class ApprovalRuleTemplateArgs {
  /// The content of the approval rule template. Maximum of 3000 characters.
  final pulumi.Input<String> content;

  /// The description of the approval rule template. Maximum of 1000 characters.
  final pulumi.Input<String>? description;

  /// The name for the approval rule template. Maximum of 100 characters.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ApprovalRuleTemplateArgs].
  /// [content] The content of the approval rule template. Maximum of 3000 characters.
  /// [description] The description of the approval rule template. Maximum of 1000 characters.
  /// [name] The name for the approval rule template. Maximum of 100 characters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ApprovalRuleTemplateArgs({
    required this.content,
    this.description,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'description': ?description,
      'name': ?name,
      'region': ?region,
    };
  }

  factory ApprovalRuleTemplateArgs.fromMap(Map<String, dynamic> map) {
    return ApprovalRuleTemplateArgs(
      content: pulumi.Input.fromValue(map['content'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
