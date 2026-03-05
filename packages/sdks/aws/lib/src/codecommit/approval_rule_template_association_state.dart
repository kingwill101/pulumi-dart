// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApprovalRuleTemplateAssociation resources.
class ApprovalRuleTemplateAssociationState {
  /// The name for the approval rule template.
  final pulumi.Input<String>? approvalRuleTemplateName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the repository that you want to associate with the template.
  final pulumi.Input<String>? repositoryName;

  /// Creates a new [ApprovalRuleTemplateAssociationState].
  /// [approvalRuleTemplateName] The name for the approval rule template.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repositoryName] The name of the repository that you want to associate with the template.
  ApprovalRuleTemplateAssociationState({
    this.approvalRuleTemplateName,
    this.region,
    this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRuleTemplateName': ?approvalRuleTemplateName,
      'region': ?region,
      'repositoryName': ?repositoryName,
    };
  }

  factory ApprovalRuleTemplateAssociationState.fromMap(Map<String, dynamic> map) {
    return ApprovalRuleTemplateAssociationState(
      approvalRuleTemplateName: (() { final guardedValue = map['approvalRuleTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryName: (() { final guardedValue = map['repositoryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

