import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_edge_cache_keyset_iam_policy_args.dart';
import 'get_edge_cache_keyset_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetEdgeCacheKeysetIamPolicyResult> getEdgeCacheKeysetIamPolicy(
  GetEdgeCacheKeysetIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getEdgeCacheKeysetIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEdgeCacheKeysetIamPolicyResult.fromMap(result);
}
