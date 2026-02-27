import 'package:pulumi/pulumi.dart';
import 'get_route_args.dart';
import 'get_route_result.dart';

/// The App Mesh Route data source allows details of an App Mesh Route to be retrieved by its name, mesh_name, virtual_router_name, and optionally the mesh_owner.
Future<GetRouteResult> getRoute(
  GetRouteArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appmesh/getRoute:getRoute',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouteResult.fromMap(result);
}
