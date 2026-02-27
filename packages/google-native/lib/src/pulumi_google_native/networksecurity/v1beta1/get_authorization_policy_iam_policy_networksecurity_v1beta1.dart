import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authorization_policy_iam_policy_networksecurity_v1beta1_args.dart';
import 'get_authorization_policy_iam_policy_networksecurity_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetAuthorizationPolicyIamPolicyNetworksecurityV1beta1Result>
    getAuthorizationPolicyIamPolicyNetworksecurityV1beta1(
  GetAuthorizationPolicyIamPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getAuthorizationPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationPolicyIamPolicyNetworksecurityV1beta1Result.fromMap(
      result);
}
