import 'package:pulumi/pulumi.dart';
import 'get_rule_args2.dart';
import 'get_rule_result2.dart';

/// `aws.wafregional.Rule` Retrieves a WAF Regional Rule Resource Id.
Future<GetRuleResult2> getRule2(
  GetRuleArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafregional/getRule:getRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRuleResult2.fromMap(result);
}
