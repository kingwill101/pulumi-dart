import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_iam_policy_apigateway_v1beta_args.dart';
import 'get_gateway_iam_policy_apigateway_v1beta_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetGatewayIamPolicyApigatewayV1betaResult>
    getGatewayIamPolicyApigatewayV1beta(
  GetGatewayIamPolicyApigatewayV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getGatewayIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayIamPolicyApigatewayV1betaResult.fromMap(result);
}
