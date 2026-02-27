import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rule_networksecurity_v1beta1_args.dart';
import 'get_rule_networksecurity_v1beta1_result.dart';

/// Gets details of a single GatewaySecurityPolicyRule.
Future<GetRuleNetworksecurityV1beta1Result> getRuleNetworksecurityV1beta1(
  GetRuleNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuleNetworksecurityV1beta1Result.fromMap(result);
}
