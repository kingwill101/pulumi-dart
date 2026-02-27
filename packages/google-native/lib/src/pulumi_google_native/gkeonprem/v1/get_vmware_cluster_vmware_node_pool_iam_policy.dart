import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vmware_cluster_vmware_node_pool_iam_policy_args.dart';
import 'get_vmware_cluster_vmware_node_pool_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetVmwareClusterVmwareNodePoolIamPolicyResult>
    getVmwareClusterVmwareNodePoolIamPolicy(
  GetVmwareClusterVmwareNodePoolIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareClusterVmwareNodePoolIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVmwareClusterVmwareNodePoolIamPolicyResult.fromMap(result);
}
