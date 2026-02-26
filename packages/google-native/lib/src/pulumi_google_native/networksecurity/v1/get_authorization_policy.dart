import 'package:pulumi/pulumi.dart';
import 'get_authorization_policy_args.dart';
import 'get_authorization_policy_result.dart';

/// Gets details of a single AuthorizationPolicy.
Future<GetAuthorizationPolicyResult> getAuthorizationPolicy(
  GetAuthorizationPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getAuthorizationPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationPolicyResult.fromMap(result);
}
