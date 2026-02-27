import 'package:pulumi/pulumi.dart' hide Config;
import 'get_node_group_args3.dart';
import 'get_node_group_result3.dart';

/// Returns the specified NodeGroup. Get a list of available NodeGroups by making a list() request. Note: the "nodes" field should not be used. Use nodeGroups.listNodes instead.
Future<GetNodeGroupResult3> getNodeGroup3(
  GetNodeGroupArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNodeGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupResult3.fromMap(result);
}
