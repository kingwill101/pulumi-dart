import 'package:pulumi/pulumi.dart';
import 'get_rate_based_rule_args.dart';
import 'get_rate_based_rule_result.dart';

/// `aws.waf.RateBasedRule` Retrieves a WAF Rate Based Rule Resource Id.
Future<GetRateBasedRuleResult> getRateBasedRule(
  GetRateBasedRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:waf/getRateBasedRule:getRateBasedRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRateBasedRuleResult.fromMap(result);
}
