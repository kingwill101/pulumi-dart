import 'package:pulumi/pulumi.dart';
import 'get_gateway_iam_policy_args3.dart';
import 'get_gateway_iam_policy_result3.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetGatewayIamPolicyResult3> getGatewayIamPolicy3(
  GetGatewayIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getGatewayIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGatewayIamPolicyResult3.fromMap(result);
}
