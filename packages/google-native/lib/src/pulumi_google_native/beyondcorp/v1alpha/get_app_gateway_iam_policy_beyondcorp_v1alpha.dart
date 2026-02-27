import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_gateway_iam_policy_beyondcorp_v1alpha_args.dart';
import 'get_app_gateway_iam_policy_beyondcorp_v1alpha_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetAppGatewayIamPolicyBeyondcorpV1alphaResult>
    getAppGatewayIamPolicyBeyondcorpV1alpha(
  GetAppGatewayIamPolicyBeyondcorpV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getAppGatewayIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppGatewayIamPolicyBeyondcorpV1alphaResult.fromMap(result);
}
