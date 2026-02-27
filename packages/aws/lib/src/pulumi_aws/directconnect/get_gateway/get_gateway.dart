import 'package:pulumi/pulumi.dart';
import 'get_gateway_args.dart';
import 'get_gateway_result.dart';

/// Retrieve information about a Direct Connect Gateway.
Future<GetGatewayResult> getGateway(
  GetGatewayArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:directconnect/getGateway:getGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGatewayResult.fromMap(result);
}
