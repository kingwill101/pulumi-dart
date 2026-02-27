import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_client_gateway_iam_policy_args.dart';
import 'get_client_gateway_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetClientGatewayIamPolicyResult> getClientGatewayIamPolicy(
  GetClientGatewayIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1:getClientGatewayIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientGatewayIamPolicyResult.fromMap(result);
}
