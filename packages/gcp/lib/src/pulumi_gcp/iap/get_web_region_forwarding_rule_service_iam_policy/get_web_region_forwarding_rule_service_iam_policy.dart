import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_web_region_forwarding_rule_service_iam_policy_args.dart';
import 'get_web_region_forwarding_rule_service_iam_policy_result.dart';

/// Retrieves the current IAM policy data for webregionforwardingruleservice
Future<GetWebRegionForwardingRuleServiceIamPolicyResult>
    getWebRegionForwardingRuleServiceIamPolicy(
  GetWebRegionForwardingRuleServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebRegionForwardingRuleServiceIamPolicy:getWebRegionForwardingRuleServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebRegionForwardingRuleServiceIamPolicyResult.fromMap(result);
}
