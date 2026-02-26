import 'package:pulumi/pulumi.dart';
import 'get_access_policy_args.dart';
import 'get_access_policy_result.dart';

/// Returns an access policy based on the name.
Future<GetAccessPolicyResult> getAccessPolicy(
  GetAccessPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:accesscontextmanager/v1:getAccessPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccessPolicyResult.fromMap(result);
}
