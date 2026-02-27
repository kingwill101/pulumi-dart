import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_pool_iam_policy_args.dart';
import 'get_worker_pool_iam_policy_result.dart';

/// Retrieves the current IAM policy data for workerpool
Future<GetWorkerPoolIamPolicyResult> getWorkerPoolIamPolicy(
  GetWorkerPoolIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrunv2/getWorkerPoolIamPolicy:getWorkerPoolIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkerPoolIamPolicyResult.fromMap(result);
}
