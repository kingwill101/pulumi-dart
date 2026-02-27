import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_tls_policy_iam_policy_networksecurity_v1beta1_args.dart';
import 'get_server_tls_policy_iam_policy_networksecurity_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetServerTlsPolicyIamPolicyNetworksecurityV1beta1Result>
    getServerTlsPolicyIamPolicyNetworksecurityV1beta1(
  GetServerTlsPolicyIamPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getServerTlsPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerTlsPolicyIamPolicyNetworksecurityV1beta1Result.fromMap(
      result);
}
