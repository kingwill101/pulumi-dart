import 'package:pulumi/pulumi.dart' hide Config;
import 'get_rule_args2.dart';
import 'get_rule_result2.dart';

/// Gets details of a single GatewaySecurityPolicyRule.
Future<GetRuleResult2> getRule2(
  GetRuleArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRuleResult2.fromMap(result);
}
