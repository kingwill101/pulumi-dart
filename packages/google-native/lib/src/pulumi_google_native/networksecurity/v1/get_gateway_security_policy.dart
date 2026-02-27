import 'package:pulumi/pulumi.dart' hide Config;
import 'get_gateway_security_policy_args.dart';
import 'get_gateway_security_policy_result.dart';

/// Gets details of a single GatewaySecurityPolicy.
Future<GetGatewaySecurityPolicyResult> getGatewaySecurityPolicy(
  GetGatewaySecurityPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getGatewaySecurityPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGatewaySecurityPolicyResult.fromMap(result);
}
