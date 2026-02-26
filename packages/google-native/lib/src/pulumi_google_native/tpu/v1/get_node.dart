import 'package:pulumi/pulumi.dart';
import 'get_node_args.dart';
import 'get_node_result.dart';

/// Gets the details of a node.
Future<GetNodeResult> getNode(
  GetNodeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:tpu/v1:getNode',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeResult.fromMap(result);
}
