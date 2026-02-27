import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subscribed_rule_group_wafregional_args.dart';
import 'get_subscribed_rule_group_wafregional_result.dart';

/// `aws.wafregional.getSubscribedRuleGroup` retrieves information about a Managed WAF Rule Group from AWS Marketplace for use in WAF Regional (needs to be subscribed to first).
Future<GetSubscribedRuleGroupWafregionalResult>
    getSubscribedRuleGroupWafregional(
  GetSubscribedRuleGroupWafregionalArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafregional/getSubscribedRuleGroup:getSubscribedRuleGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscribedRuleGroupWafregionalResult.fromMap(result);
}
