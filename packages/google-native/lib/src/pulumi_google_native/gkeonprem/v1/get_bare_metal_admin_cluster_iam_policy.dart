import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bare_metal_admin_cluster_iam_policy_args.dart';
import 'get_bare_metal_admin_cluster_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetBareMetalAdminClusterIamPolicyResult>
    getBareMetalAdminClusterIamPolicy(
  GetBareMetalAdminClusterIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalAdminClusterIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBareMetalAdminClusterIamPolicyResult.fromMap(result);
}
