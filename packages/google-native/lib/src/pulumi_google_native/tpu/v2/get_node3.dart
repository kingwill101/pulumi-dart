import 'package:pulumi/pulumi.dart';
import 'get_node_args3.dart';
import 'get_node_result3.dart';

/// Gets the details of a node.
Future<GetNodeResult3> getNode3(
  GetNodeArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:tpu/v2:getNode',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeResult3.fromMap(result);
}
