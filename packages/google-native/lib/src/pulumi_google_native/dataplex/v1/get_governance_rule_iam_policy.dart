import 'package:pulumi/pulumi.dart' hide Config;
import 'get_governance_rule_iam_policy_args.dart';
import 'get_governance_rule_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetGovernanceRuleIamPolicyResult> getGovernanceRuleIamPolicy(
  GetGovernanceRuleIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getGovernanceRuleIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGovernanceRuleIamPolicyResult.fromMap(result);
}
