import 'package:pulumi/pulumi.dart' hide Config;
import 'get_node_args2.dart';
import 'get_node_result2.dart';

/// Gets the details of a node.
Future<GetNodeResult2> getNode2(
  GetNodeArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:tpu/v1alpha1:getNode',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeResult2.fromMap(result);
}
