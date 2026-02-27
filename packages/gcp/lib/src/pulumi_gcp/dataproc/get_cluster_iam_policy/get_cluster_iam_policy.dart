import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_iam_policy_args.dart';
import 'get_cluster_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a Dataproc cluster.
///
/// ## example
Future<GetClusterIamPolicyResult> getClusterIamPolicy(
  GetClusterIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getClusterIamPolicy:getClusterIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterIamPolicyResult.fromMap(result);
}
