import 'package:pulumi/pulumi.dart';
import 'get_access_policy_args.dart';
import 'get_access_policy_result.dart';

/// Get information about an Access Context Manager AccessPolicy.
Future<GetAccessPolicyResult> getAccessPolicy(
  GetAccessPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:accesscontextmanager/getAccessPolicy:getAccessPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccessPolicyResult.fromMap(result);
}
