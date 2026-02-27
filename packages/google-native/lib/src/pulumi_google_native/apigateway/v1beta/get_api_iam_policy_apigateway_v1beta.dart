import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_iam_policy_apigateway_v1beta_args.dart';
import 'get_api_iam_policy_apigateway_v1beta_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetApiIamPolicyApigatewayV1betaResult> getApiIamPolicyApigatewayV1beta(
  GetApiIamPolicyApigatewayV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getApiIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiIamPolicyApigatewayV1betaResult.fromMap(result);
}
