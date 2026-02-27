import 'package:pulumi/pulumi.dart';
import 'get_environment_iam_policy_args.dart';
import 'get_environment_iam_policy_result.dart';

/// Retrieves the current IAM policy data for environment
Future<GetEnvironmentIamPolicyResult> getEnvironmentIamPolicy(
  GetEnvironmentIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apigee/getEnvironmentIamPolicy:getEnvironmentIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentIamPolicyResult.fromMap(result);
}
