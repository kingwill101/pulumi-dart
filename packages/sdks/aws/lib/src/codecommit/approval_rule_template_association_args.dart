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
    required this.approvalRuleTemplateName,
    this.region,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRuleTemplateName': approvalRuleTemplateName,
      'region': ?region,
      'repositoryName': repositoryName,
    };
  }

  factory ApprovalRuleTemplateAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ApprovalRuleTemplateAssociationArgs(
      approvalRuleTemplateName: (map['approvalRuleTemplateName'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      repositoryName: (map['repositoryName'] as String).input(),
    );
  }
}

