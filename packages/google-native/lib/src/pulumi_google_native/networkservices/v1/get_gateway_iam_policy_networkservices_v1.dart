import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_iam_policy_networkservices_v1_args.dart';
import 'get_gateway_iam_policy_networkservices_v1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetGatewayIamPolicyNetworkservicesV1Result>
    getGatewayIamPolicyNetworkservicesV1(
  GetGatewayIamPolicyNetworkservicesV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getGatewayIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayIamPolicyNetworkservicesV1Result.fromMap(result);
}
