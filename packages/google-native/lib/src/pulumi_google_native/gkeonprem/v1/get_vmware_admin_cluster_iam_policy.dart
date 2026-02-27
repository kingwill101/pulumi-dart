import 'package:pulumi/pulumi.dart' hide Config;
import 'get_vmware_admin_cluster_iam_policy_args.dart';
import 'get_vmware_admin_cluster_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetVmwareAdminClusterIamPolicyResult> getVmwareAdminClusterIamPolicy(
  GetVmwareAdminClusterIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareAdminClusterIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVmwareAdminClusterIamPolicyResult.fromMap(result);
}
