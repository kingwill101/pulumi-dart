import 'package:pulumi/pulumi.dart' hide Config;
import 'get_vmware_cluster_vmware_node_pool_iam_policy_args.dart';
import 'get_vmware_cluster_vmware_node_pool_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetVmwareClusterVmwareNodePoolIamPolicyResult>
    getVmwareClusterVmwareNodePoolIamPolicy(
  GetVmwareClusterVmwareNodePoolIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareClusterVmwareNodePoolIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVmwareClusterVmwareNodePoolIamPolicyResult.fromMap(result);
}
