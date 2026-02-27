import 'package:pulumi/pulumi.dart' hide Config;
import 'get_node_args4.dart';
import 'get_node_result4.dart';

/// Gets the details of a node.
Future<GetNodeResult4> getNode4(
  GetNodeArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:tpu/v2alpha1:getNode',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeResult4.fromMap(result);
}
