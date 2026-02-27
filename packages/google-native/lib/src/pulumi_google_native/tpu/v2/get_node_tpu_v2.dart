import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_tpu_v2_args.dart';
import 'get_node_tpu_v2_result.dart';

/// Gets the details of a node.
Future<GetNodeTpuV2Result> getNodeTpuV2(
  GetNodeTpuV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:tpu/v2:getNode',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeTpuV2Result.fromMap(result);
}
