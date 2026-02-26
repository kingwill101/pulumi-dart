import 'package:pulumi/pulumi.dart';
import 'get_gateway_iam_policy_args2.dart';
import 'get_gateway_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetGatewayIamPolicyResult2> getGatewayIamPolicy2(
  GetGatewayIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getGatewayIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGatewayIamPolicyResult2.fromMap(result);
}
