import 'package:pulumi/pulumi.dart';
import 'get_mesh_args2.dart';
import 'get_mesh_result2.dart';

/// Gets details of a single Mesh.
Future<GetMeshResult2> getMesh2(
  GetMeshArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getMesh',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMeshResult2.fromMap(result);
}
