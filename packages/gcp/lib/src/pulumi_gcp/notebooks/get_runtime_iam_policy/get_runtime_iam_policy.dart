import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_runtime_iam_policy_args.dart';
import 'get_runtime_iam_policy_result.dart';

/// Retrieves the current IAM policy data for runtime
Future<GetRuntimeIamPolicyResult> getRuntimeIamPolicy(
  GetRuntimeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:notebooks/getRuntimeIamPolicy:getRuntimeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuntimeIamPolicyResult.fromMap(result);
}
