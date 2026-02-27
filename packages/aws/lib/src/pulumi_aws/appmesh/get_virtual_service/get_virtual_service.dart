import 'package:pulumi/pulumi.dart';
import 'get_virtual_service_args.dart';
import 'get_virtual_service_result.dart';

/// The App Mesh Virtual Service data source allows details of an App Mesh Virtual Service to be retrieved by its name, mesh_name, and optionally the mesh_owner.
Future<GetVirtualServiceResult> getVirtualService(
  GetVirtualServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appmesh/getVirtualService:getVirtualService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVirtualServiceResult.fromMap(result);
}
