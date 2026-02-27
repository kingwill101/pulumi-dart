import 'package:pulumi/pulumi.dart';
import 'get_web_forwarding_rule_service_iam_policy_args.dart';
import 'get_web_forwarding_rule_service_iam_policy_result.dart';

/// Retrieves the current IAM policy data for webforwardingruleservice
Future<GetWebForwardingRuleServiceIamPolicyResult>
    getWebForwardingRuleServiceIamPolicy(
  GetWebForwardingRuleServiceIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebForwardingRuleServiceIamPolicy:getWebForwardingRuleServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWebForwardingRuleServiceIamPolicyResult.fromMap(result);
}
