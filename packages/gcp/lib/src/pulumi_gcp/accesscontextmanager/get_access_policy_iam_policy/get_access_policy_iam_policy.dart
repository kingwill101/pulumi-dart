import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_policy_iam_policy_args.dart';
import 'get_access_policy_iam_policy_result.dart';

/// Retrieves the current IAM policy data for accesspolicy
Future<GetAccessPolicyIamPolicyResult> getAccessPolicyIamPolicy(
  GetAccessPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:accesscontextmanager/getAccessPolicyIamPolicy:getAccessPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPolicyIamPolicyResult.fromMap(result);
}
