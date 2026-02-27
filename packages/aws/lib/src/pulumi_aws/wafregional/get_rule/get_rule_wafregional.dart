import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rule_wafregional_args.dart';
import 'get_rule_wafregional_result.dart';

/// `aws.wafregional.Rule` Retrieves a WAF Regional Rule Resource Id.
Future<GetRuleWafregionalResult> getRuleWafregional(
  GetRuleWafregionalArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafregional/getRule:getRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuleWafregionalResult.fromMap(result);
}
