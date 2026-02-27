import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_mesh_args.dart';
import 'get_mesh_result.dart';

/// Gets details of a single Mesh.
Future<GetMeshResult> getMesh(
  GetMeshArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getMesh',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMeshResult.fromMap(result);
}
