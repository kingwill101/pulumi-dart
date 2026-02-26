import 'package:pulumi/pulumi.dart';
import 'get_node_group_args.dart';
import 'get_node_group_result.dart';

/// Returns the specified NodeGroup. Get a list of available NodeGroups by making a list() request. Note: the "nodes" field should not be used. Use nodeGroups.listNodes instead.
Future<GetNodeGroupResult> getNodeGroup(
  GetNodeGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getNodeGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupResult.fromMap(result);
}
