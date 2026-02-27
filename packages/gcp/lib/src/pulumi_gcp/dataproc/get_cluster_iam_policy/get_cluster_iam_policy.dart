import 'package:pulumi/pulumi.dart';
import 'get_cluster_iam_policy_args.dart';
import 'get_cluster_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a Dataproc cluster.
///
/// ## example
Future<GetClusterIamPolicyResult> getClusterIamPolicy(
  GetClusterIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getClusterIamPolicy:getClusterIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterIamPolicyResult.fromMap(result);
}
