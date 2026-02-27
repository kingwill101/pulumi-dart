import 'package:pulumi/pulumi.dart';
import 'get_web_region_forwarding_rule_service_iam_policy_args.dart';
import 'get_web_region_forwarding_rule_service_iam_policy_result.dart';

/// Retrieves the current IAM policy data for webregionforwardingruleservice
Future<GetWebRegionForwardingRuleServiceIamPolicyResult>
    getWebRegionForwardingRuleServiceIamPolicy(
  GetWebRegionForwardingRuleServiceIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebRegionForwardingRuleServiceIamPolicy:getWebRegionForwardingRuleServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWebRegionForwardingRuleServiceIamPolicyResult.fromMap(result);
}
