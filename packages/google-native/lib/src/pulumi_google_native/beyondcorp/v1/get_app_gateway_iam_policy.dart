import 'package:pulumi/pulumi.dart';
import 'get_app_gateway_iam_policy_args.dart';
import 'get_app_gateway_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetAppGatewayIamPolicyResult> getAppGatewayIamPolicy(
  GetAppGatewayIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1:getAppGatewayIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppGatewayIamPolicyResult.fromMap(result);
}
