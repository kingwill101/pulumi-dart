import 'package:pulumi/pulumi.dart' hide Config;
import 'get_gateway_security_policy_args2.dart';
import 'get_gateway_security_policy_result2.dart';

/// Gets details of a single GatewaySecurityPolicy.
Future<GetGatewaySecurityPolicyResult2> getGatewaySecurityPolicy2(
  GetGatewaySecurityPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getGatewaySecurityPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGatewaySecurityPolicyResult2.fromMap(result);
}
