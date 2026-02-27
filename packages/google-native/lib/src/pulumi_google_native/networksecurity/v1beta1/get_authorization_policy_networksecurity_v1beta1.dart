import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authorization_policy_networksecurity_v1beta1_args.dart';
import 'get_authorization_policy_networksecurity_v1beta1_result.dart';

/// Gets details of a single AuthorizationPolicy.
Future<GetAuthorizationPolicyNetworksecurityV1beta1Result>
    getAuthorizationPolicyNetworksecurityV1beta1(
  GetAuthorizationPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getAuthorizationPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationPolicyNetworksecurityV1beta1Result.fromMap(result);
}
