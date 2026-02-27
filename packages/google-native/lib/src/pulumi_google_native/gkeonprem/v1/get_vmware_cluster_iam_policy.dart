import 'package:pulumi/pulumi.dart' hide Config;
import 'get_vmware_cluster_iam_policy_args.dart';
import 'get_vmware_cluster_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetVmwareClusterIamPolicyResult> getVmwareClusterIamPolicy(
  GetVmwareClusterIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareClusterIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVmwareClusterIamPolicyResult.fromMap(result);
}
