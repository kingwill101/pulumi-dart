import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_config_iam_policy_apigateway_v1beta_args.dart';
import 'get_api_config_iam_policy_apigateway_v1beta_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetApiConfigIamPolicyApigatewayV1betaResult>
    getApiConfigIamPolicyApigatewayV1beta(
  GetApiConfigIamPolicyApigatewayV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getApiConfigIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiConfigIamPolicyApigatewayV1betaResult.fromMap(result);
}
