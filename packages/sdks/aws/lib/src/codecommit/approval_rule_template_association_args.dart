// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_codecommit_approval_rule_template_association_approval_rule_template_association_args_doc}
/// The set of arguments for ApprovalRuleTemplateAssociation.
/// {@endtemplate}
/// {@macro pulumi_codecommit_approval_rule_template_association_approval_rule_template_association_args_doc}
class ApprovalRuleTemplateAssociationArgs {
  /// The name for the approval rule template.
  final pulumi.Input<String> approvalRuleTemplateName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the repository that you want to associate with the template.
  final pulumi.Input<String> repositoryName;

  /// Creates a new [ApprovalRuleTemplateAssociationArgs].
  /// [approvalRuleTemplateName] The name for the approval rule template.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repositoryName] The name of the repository that you want to associate with the template.
  ApprovalRuleTemplateAssociationArgs({
    required pulumi.Output<String> approvalRuleTemplateName,
    pulumi.Output<String>? region,
    required pulumi.Output<String> repositoryName,
  }) :
      approvalRuleTemplateName = pulumi.Input.asInput<String>(approvalRuleTemplateName),
      region = pulumi.Input.asOptionalInput<String>(region),
      repositoryName = pulumi.Input.asInput<String>(repositoryName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRuleTemplateName': approvalRuleTemplateName,
      'region': ?region,
      'repositoryName': repositoryName,
    };
  }

  factory ApprovalRuleTemplateAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ApprovalRuleTemplateAssociationArgs(
      approvalRuleTemplateName: pulumi.Output.create<String>(map['approvalRuleTemplateName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      repositoryName: pulumi.Output.create<String>(map['repositoryName'] as String),
    );
  }
}

