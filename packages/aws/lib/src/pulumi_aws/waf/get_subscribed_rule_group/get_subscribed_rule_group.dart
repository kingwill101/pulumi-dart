import 'package:pulumi/pulumi.dart';
import 'get_subscribed_rule_group_args.dart';
import 'get_subscribed_rule_group_result.dart';

/// `aws.waf.getSubscribedRuleGroup` retrieves information about a Managed WAF Rule Group from AWS Marketplace (needs to be subscribed to first).
Future<GetSubscribedRuleGroupResult> getSubscribedRuleGroup(
  GetSubscribedRuleGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:waf/getSubscribedRuleGroup:getSubscribedRuleGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubscribedRuleGroupResult.fromMap(result);
}
