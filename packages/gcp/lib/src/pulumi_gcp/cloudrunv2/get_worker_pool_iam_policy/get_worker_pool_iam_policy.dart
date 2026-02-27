import 'package:pulumi/pulumi.dart';
import 'get_worker_pool_iam_policy_args.dart';
import 'get_worker_pool_iam_policy_result.dart';

/// Retrieves the current IAM policy data for workerpool
Future<GetWorkerPoolIamPolicyResult> getWorkerPoolIamPolicy(
  GetWorkerPoolIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrunv2/getWorkerPoolIamPolicy:getWorkerPoolIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkerPoolIamPolicyResult.fromMap(result);
}
