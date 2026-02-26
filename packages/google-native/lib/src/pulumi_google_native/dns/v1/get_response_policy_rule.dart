import 'package:pulumi/pulumi.dart';
import 'get_response_policy_rule_args.dart';
import 'get_response_policy_rule_result.dart';

/// Fetches the representation of an existing Response Policy Rule.
Future<GetResponsePolicyRuleResult> getResponsePolicyRule(
  GetResponsePolicyRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1:getResponsePolicyRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResponsePolicyRuleResult.fromMap(result);
}
