import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_iam_policy_compute_args.dart';
import 'get_instance_iam_policy_compute_result.dart';

/// Retrieves the current IAM policy data for instance
Future<GetInstanceIamPolicyComputeResult> getInstanceIamPolicyCompute(
  GetInstanceIamPolicyComputeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyComputeResult.fromMap(result);
}
