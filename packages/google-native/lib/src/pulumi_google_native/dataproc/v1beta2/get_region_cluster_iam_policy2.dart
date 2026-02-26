import 'package:pulumi/pulumi.dart';
import 'get_region_cluster_iam_policy_args2.dart';
import 'get_region_cluster_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetRegionClusterIamPolicyResult2> getRegionClusterIamPolicy2(
  GetRegionClusterIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getRegionClusterIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionClusterIamPolicyResult2.fromMap(result);
}
