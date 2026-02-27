import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_tpu_v2alpha1_args.dart';
import 'get_node_tpu_v2alpha1_result.dart';

/// Gets the details of a node.
Future<GetNodeTpuV2alpha1Result> getNodeTpuV2alpha1(
  GetNodeTpuV2alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:tpu/v2alpha1:getNode',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeTpuV2alpha1Result.fromMap(result);
}
