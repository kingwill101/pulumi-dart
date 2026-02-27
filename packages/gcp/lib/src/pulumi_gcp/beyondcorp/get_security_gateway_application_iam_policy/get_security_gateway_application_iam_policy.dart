import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_gateway_application_iam_policy_args.dart';
import 'get_security_gateway_application_iam_policy_result.dart';

/// Retrieves the current IAM policy data for securitygatewayapplication
Future<GetSecurityGatewayApplicationIamPolicyResult>
    getSecurityGatewayApplicationIamPolicy(
  GetSecurityGatewayApplicationIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getSecurityGatewayApplicationIamPolicy:getSecurityGatewayApplicationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityGatewayApplicationIamPolicyResult.fromMap(result);
}
