import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_policy_iam_policy_networkservices_v1beta1_args.dart';
import 'get_endpoint_policy_iam_policy_networkservices_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetEndpointPolicyIamPolicyNetworkservicesV1beta1Result>
    getEndpointPolicyIamPolicyNetworkservicesV1beta1(
  GetEndpointPolicyIamPolicyNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getEndpointPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointPolicyIamPolicyNetworkservicesV1beta1Result.fromMap(result);
}
