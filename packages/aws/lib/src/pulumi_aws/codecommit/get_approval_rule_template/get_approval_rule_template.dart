import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_approval_rule_template_args.dart';
import 'get_approval_rule_template_result.dart';

/// Provides details about a specific CodeCommit Approval Rule Template.
Future<GetApprovalRuleTemplateResult> getApprovalRuleTemplate(
  GetApprovalRuleTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:codecommit/getApprovalRuleTemplate:getApprovalRuleTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApprovalRuleTemplateResult.fromMap(result);
}
