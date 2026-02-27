import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_tpu_v1alpha1_args.dart';
import 'get_node_tpu_v1alpha1_result.dart';

/// Gets the details of a node.
Future<GetNodeTpuV1alpha1Result> getNodeTpuV1alpha1(
  GetNodeTpuV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:tpu/v1alpha1:getNode',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeTpuV1alpha1Result.fromMap(result);
}
