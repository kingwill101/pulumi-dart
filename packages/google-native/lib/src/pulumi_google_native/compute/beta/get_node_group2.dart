import 'package:pulumi/pulumi.dart' hide Config;
import 'get_node_group_args2.dart';
import 'get_node_group_result2.dart';

/// Returns the specified NodeGroup. Get a list of available NodeGroups by making a list() request. Note: the "nodes" field should not be used. Use nodeGroups.listNodes instead.
Future<GetNodeGroupResult2> getNodeGroup2(
  GetNodeGroupArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNodeGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupResult2.fromMap(result);
}
