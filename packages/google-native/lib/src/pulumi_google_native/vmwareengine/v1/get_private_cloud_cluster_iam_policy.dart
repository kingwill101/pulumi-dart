import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_cloud_cluster_iam_policy_args.dart';
import 'get_private_cloud_cluster_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetPrivateCloudClusterIamPolicyResult> getPrivateCloudClusterIamPolicy(
  GetPrivateCloudClusterIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getPrivateCloudClusterIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateCloudClusterIamPolicyResult.fromMap(result);
}
