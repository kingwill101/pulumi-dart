import 'package:pulumi/pulumi.dart' hide Config;
import 'get_client_gateway_iam_policy_args2.dart';
import 'get_client_gateway_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetClientGatewayIamPolicyResult2> getClientGatewayIamPolicy2(
  GetClientGatewayIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getClientGatewayIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClientGatewayIamPolicyResult2.fromMap(result);
}
