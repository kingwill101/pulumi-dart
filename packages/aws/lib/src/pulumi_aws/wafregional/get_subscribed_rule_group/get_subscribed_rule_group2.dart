import 'package:pulumi/pulumi.dart';
import 'get_subscribed_rule_group_args2.dart';
import 'get_subscribed_rule_group_result2.dart';

/// `aws.wafregional.getSubscribedRuleGroup` retrieves information about a Managed WAF Rule Group from AWS Marketplace for use in WAF Regional (needs to be subscribed to first).
Future<GetSubscribedRuleGroupResult2> getSubscribedRuleGroup2(
  GetSubscribedRuleGroupArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafregional/getSubscribedRuleGroup:getSubscribedRuleGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubscribedRuleGroupResult2.fromMap(result);
}
