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
    required pulumi.Output<String> content,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      content = pulumi.Input.asInput<String>(content),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      content: pulumi.Output.create<String>(map['content'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

