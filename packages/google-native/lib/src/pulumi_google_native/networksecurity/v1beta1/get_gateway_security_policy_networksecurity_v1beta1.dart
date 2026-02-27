import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_security_policy_networksecurity_v1beta1_args.dart';
import 'get_gateway_security_policy_networksecurity_v1beta1_result.dart';

/// Gets details of a single GatewaySecurityPolicy.
Future<GetGatewaySecurityPolicyNetworksecurityV1beta1Result>
    getGatewaySecurityPolicyNetworksecurityV1beta1(
  GetGatewaySecurityPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getGatewaySecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewaySecurityPolicyNetworksecurityV1beta1Result.fromMap(result);
}
