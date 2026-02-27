import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_client_gateway_iam_policy_beyondcorp_v1alpha_args.dart';
import 'get_client_gateway_iam_policy_beyondcorp_v1alpha_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetClientGatewayIamPolicyBeyondcorpV1alphaResult>
    getClientGatewayIamPolicyBeyondcorpV1alpha(
  GetClientGatewayIamPolicyBeyondcorpV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getClientGatewayIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientGatewayIamPolicyBeyondcorpV1alphaResult.fromMap(result);
}
