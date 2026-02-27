import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_cluster_iam_policy_dataproc_v1beta2_args.dart';
import 'get_region_cluster_iam_policy_dataproc_v1beta2_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetRegionClusterIamPolicyDataprocV1beta2Result>
    getRegionClusterIamPolicyDataprocV1beta2(
  GetRegionClusterIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getRegionClusterIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionClusterIamPolicyDataprocV1beta2Result.fromMap(result);
}
