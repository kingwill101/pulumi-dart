import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_gateway_iam_policy_args.dart';
import 'get_security_gateway_iam_policy_result.dart';

/// Retrieves the current IAM policy data for securitygateway
Future<GetSecurityGatewayIamPolicyResult> getSecurityGatewayIamPolicy(
  GetSecurityGatewayIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getSecurityGatewayIamPolicy:getSecurityGatewayIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityGatewayIamPolicyResult.fromMap(result);
}
