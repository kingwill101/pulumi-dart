import 'package:pulumi/pulumi.dart';
import 'get_security_gateway_args.dart';
import 'get_security_gateway_result.dart';

/// Get information about a Google BeyondCorp Security Gateway.
Future<GetSecurityGatewayResult> getSecurityGateway(
  GetSecurityGatewayArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getSecurityGateway:getSecurityGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecurityGatewayResult.fromMap(result);
}
