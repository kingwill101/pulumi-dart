import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rule_group_args.dart';
import 'get_rule_group_result.dart';

/// Retrieves the summary of a WAFv2 Rule Group.
Future<GetRuleGroupResult> getRuleGroup(
  GetRuleGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafv2/getRuleGroup:getRuleGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuleGroupResult.fromMap(result);
}
