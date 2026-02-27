import 'package:pulumi/pulumi.dart' as pulumi;
import 'approval_rule_template_association_args.dart';

/// Associates a CodeCommit Approval Rule Template with a Repository.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CodeCommit approval rule template associations using the `approval_rule_template_name` and `repository_name` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:codecommit/approvalRuleTemplateAssociation:ApprovalRuleTemplateAssociation example approver-rule-for-example,MyExampleRepo
/// ```
class ApprovalRuleTemplateAssociation extends pulumi.CustomResource {
  /// The name for the approval rule template.
  late final pulumi.Output<String> approvalRuleTemplateName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The name of the repository that you want to associate with the template.
  late final pulumi.Output<String> repositoryName;

  ApprovalRuleTemplateAssociation(
    String name, {
    ApprovalRuleTemplateAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codecommit/approvalRuleTemplateAssociation:ApprovalRuleTemplateAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.approvalRuleTemplateName =
        registerOutput<String>('approvalRuleTemplateName');
    this.region = registerOutput<String>('region');
    this.repositoryName = registerOutput<String>('repositoryName');
  }
}
