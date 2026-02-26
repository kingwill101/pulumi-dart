import 'package:pulumi/pulumi.dart';
import 'get_app_gateway_iam_policy_args2.dart';
import 'get_app_gateway_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetAppGatewayIamPolicyResult2> getAppGatewayIamPolicy2(
  GetAppGatewayIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getAppGatewayIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppGatewayIamPolicyResult2.fromMap(result);
}
