import 'package:pulumi/pulumi.dart' hide Config;
import 'get_access_policy_args2.dart';
import 'get_access_policy_result2.dart';

/// Get an AccessPolicy by name.
Future<GetAccessPolicyResult2> getAccessPolicy2(
  GetAccessPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:accesscontextmanager/v1beta:getAccessPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccessPolicyResult2.fromMap(result);
}
