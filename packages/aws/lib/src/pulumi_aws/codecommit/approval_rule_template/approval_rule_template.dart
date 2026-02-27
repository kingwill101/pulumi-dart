import 'package:pulumi/pulumi.dart';
import 'approval_rule_template_args.dart';

/// Provides a CodeCommit Approval Rule Template Resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CodeCommit approval rule templates using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:codecommit/approvalRuleTemplate:ApprovalRuleTemplate imported ExistingApprovalRuleTemplateName
/// ```
class ApprovalRuleTemplate extends CustomResource {
  /// The ID of the approval rule template
  late final Output<String> approvalRuleTemplateId;

  /// The content of the approval rule template. Maximum of 3000 characters.
  late final Output<String> content;

  /// The date the approval rule template was created, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  late final Output<String> creationDate;

  /// The description of the approval rule template. Maximum of 1000 characters.
  late final Output<String?> description;

  /// The date the approval rule template was most recently changed, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  late final Output<String> lastModifiedDate;

  /// The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule template.
  late final Output<String> lastModifiedUser;

  /// The name for the approval rule template. Maximum of 100 characters.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The SHA-256 hash signature for the content of the approval rule template.
  late final Output<String> ruleContentSha256;

  ApprovalRuleTemplate(
    String name, {
    ApprovalRuleTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codecommit/approvalRuleTemplate:ApprovalRuleTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.approvalRuleTemplateId =
        registerOutput<String>('approvalRuleTemplateId');
    this.content = registerOutput<String>('content');
    this.creationDate = registerOutput<String>('creationDate');
    this.description = registerOutput<String?>('description');
    this.lastModifiedDate = registerOutput<String>('lastModifiedDate');
    this.lastModifiedUser = registerOutput<String>('lastModifiedUser');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.ruleContentSha256 = registerOutput<String>('ruleContentSha256');
  }
}
