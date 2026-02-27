import 'package:pulumi/pulumi.dart';
import 'get_security_gateway_iam_policy_args.dart';
import 'get_security_gateway_iam_policy_result.dart';

/// Retrieves the current IAM policy data for securitygateway
Future<GetSecurityGatewayIamPolicyResult> getSecurityGatewayIamPolicy(
  GetSecurityGatewayIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getSecurityGatewayIamPolicy:getSecurityGatewayIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecurityGatewayIamPolicyResult.fromMap(result);
}
