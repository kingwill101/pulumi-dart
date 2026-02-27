import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_mesh_args.dart';
import 'get_mesh_result.dart';

/// The App Mesh Mesh data source allows details of an App Mesh Mesh to be retrieved by its name and optionally the mesh_owner.
Future<GetMeshResult> getMesh(
  GetMeshArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appmesh/getMesh:getMesh',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMeshResult.fromMap(result);
}
