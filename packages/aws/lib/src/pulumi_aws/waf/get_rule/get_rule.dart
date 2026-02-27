import 'package:pulumi/pulumi.dart';
import 'get_rule_args.dart';
import 'get_rule_result.dart';

/// `aws.waf.Rule` Retrieves a WAF Rule Resource Id.
Future<GetRuleResult> getRule(
  GetRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:waf/getRule:getRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRuleResult.fromMap(result);
}
