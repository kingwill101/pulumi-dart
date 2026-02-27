// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ApprovalRuleTemplateAssociation.
class ApprovalRuleTemplateAssociationArgs {
  /// The name for the approval rule template.
  final pulumi.Input<String> approvalRuleTemplateName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The name of the repository that you want to associate with the template.
  final pulumi.Input<String> repositoryName;

  ApprovalRuleTemplateAssociationArgs({
    required this.approvalRuleTemplateName,
    this.region,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['approvalRuleTemplateName'] = approvalRuleTemplateName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['repositoryName'] = repositoryName;
    return map;
  }

  factory ApprovalRuleTemplateAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return ApprovalRuleTemplateAssociationArgs(
      approvalRuleTemplateName:
          pulumi.Input.asInput<String>(map['approvalRuleTemplateName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      repositoryName: pulumi.Input.asInput<String>(map['repositoryName']),
    );
  }
}
