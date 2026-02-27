import 'package:pulumi/pulumi.dart';
import 'get_gateway_route_args.dart';
import 'get_gateway_route_result.dart';

/// The App Mesh Gateway Route data source allows details of an App Mesh Gateway Route to be retrieved by its name, mesh_name, virtual_gateway_name, and optionally the mesh_owner.
Future<GetGatewayRouteResult> getGatewayRoute(
  GetGatewayRouteArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appmesh/getGatewayRoute:getGatewayRoute',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGatewayRouteResult.fromMap(result);
}
