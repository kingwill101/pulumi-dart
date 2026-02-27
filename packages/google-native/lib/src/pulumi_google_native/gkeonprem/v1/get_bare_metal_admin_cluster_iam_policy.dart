import 'package:pulumi/pulumi.dart' hide Config;
import 'get_bare_metal_admin_cluster_iam_policy_args.dart';
import 'get_bare_metal_admin_cluster_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetBareMetalAdminClusterIamPolicyResult>
    getBareMetalAdminClusterIamPolicy(
  GetBareMetalAdminClusterIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalAdminClusterIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBareMetalAdminClusterIamPolicyResult.fromMap(result);
}
