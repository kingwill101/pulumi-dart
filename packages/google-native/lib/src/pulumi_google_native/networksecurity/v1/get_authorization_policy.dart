import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authorization_policy_args.dart';
import 'get_authorization_policy_result.dart';

/// Gets details of a single AuthorizationPolicy.
Future<GetAuthorizationPolicyResult> getAuthorizationPolicy(
  GetAuthorizationPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getAuthorizationPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationPolicyResult.fromMap(result);
}
