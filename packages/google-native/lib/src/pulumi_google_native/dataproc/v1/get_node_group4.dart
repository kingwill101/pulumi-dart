import 'package:pulumi/pulumi.dart';
import 'get_node_group_args4.dart';
import 'get_node_group_result4.dart';

/// Gets the resource representation for a node group in a cluster.
Future<GetNodeGroupResult4> getNodeGroup4(
  GetNodeGroupArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getNodeGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupResult4.fromMap(result);
}
