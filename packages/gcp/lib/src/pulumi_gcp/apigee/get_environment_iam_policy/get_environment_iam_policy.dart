import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_iam_policy_args.dart';
import 'get_environment_iam_policy_result.dart';

/// Retrieves the current IAM policy data for environment
Future<GetEnvironmentIamPolicyResult> getEnvironmentIamPolicy(
  GetEnvironmentIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apigee/getEnvironmentIamPolicy:getEnvironmentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentIamPolicyResult.fromMap(result);
}
