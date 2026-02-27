import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_router_args.dart';
import 'get_virtual_router_result.dart';

/// The App Mesh Virtual Router data source allows details of an App Mesh Virtual Service to be retrieved by its name and mesh_name.
Future<GetVirtualRouterResult> getVirtualRouter(
  GetVirtualRouterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appmesh/getVirtualRouter:getVirtualRouter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualRouterResult.fromMap(result);
}
