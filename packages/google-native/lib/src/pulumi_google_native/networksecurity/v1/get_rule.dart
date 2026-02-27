import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rule_args.dart';
import 'get_rule_result.dart';

/// Gets details of a single GatewaySecurityPolicyRule.
Future<GetRuleResult> getRule(
  GetRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuleResult.fromMap(result);
}
