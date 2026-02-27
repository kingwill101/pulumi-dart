import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_iam_policy_networkservices_v1beta1_args.dart';
import 'get_gateway_iam_policy_networkservices_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetGatewayIamPolicyNetworkservicesV1beta1Result>
    getGatewayIamPolicyNetworkservicesV1beta1(
  GetGatewayIamPolicyNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getGatewayIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayIamPolicyNetworkservicesV1beta1Result.fromMap(result);
}
