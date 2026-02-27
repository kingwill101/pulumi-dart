import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_mesh_networkservices_v1beta1_args.dart';
import 'get_mesh_networkservices_v1beta1_result.dart';

/// Gets details of a single Mesh.
Future<GetMeshNetworkservicesV1beta1Result> getMeshNetworkservicesV1beta1(
  GetMeshNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getMesh',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMeshNetworkservicesV1beta1Result.fromMap(result);
}
