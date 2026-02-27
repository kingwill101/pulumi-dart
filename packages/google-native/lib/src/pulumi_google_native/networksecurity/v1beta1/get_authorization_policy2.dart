import 'package:pulumi/pulumi.dart' hide Config;
import 'get_authorization_policy_args2.dart';
import 'get_authorization_policy_result2.dart';

/// Gets details of a single AuthorizationPolicy.
Future<GetAuthorizationPolicyResult2> getAuthorizationPolicy2(
  GetAuthorizationPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getAuthorizationPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationPolicyResult2.fromMap(result);
}
