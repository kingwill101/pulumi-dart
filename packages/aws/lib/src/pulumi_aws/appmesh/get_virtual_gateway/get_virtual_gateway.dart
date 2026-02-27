import 'package:pulumi/pulumi.dart';
import 'get_virtual_gateway_args.dart';
import 'get_virtual_gateway_result.dart';

/// Data source for managing an AWS App Mesh Virtual Gateway.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetVirtualGatewayResult> getVirtualGateway(
  GetVirtualGatewayArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appmesh/getVirtualGateway:getVirtualGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVirtualGatewayResult.fromMap(result);
}
