import 'package:pulumi/pulumi.dart';
import 'get_bare_metal_cluster_iam_policy_args.dart';
import 'get_bare_metal_cluster_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetBareMetalClusterIamPolicyResult> getBareMetalClusterIamPolicy(
  GetBareMetalClusterIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalClusterIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBareMetalClusterIamPolicyResult.fromMap(result);
}
