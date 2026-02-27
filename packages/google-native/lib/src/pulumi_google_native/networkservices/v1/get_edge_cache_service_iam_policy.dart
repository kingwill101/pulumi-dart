import 'package:pulumi/pulumi.dart' hide Config;
import 'get_edge_cache_service_iam_policy_args.dart';
import 'get_edge_cache_service_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetEdgeCacheServiceIamPolicyResult> getEdgeCacheServiceIamPolicy(
  GetEdgeCacheServiceIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getEdgeCacheServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEdgeCacheServiceIamPolicyResult.fromMap(result);
}
