import 'package:pulumi/pulumi.dart';
import 'get_node_group_args.dart';
import 'get_node_group_result.dart';

/// Retrieve information about an EKS Node Group.
Future<GetNodeGroupResult> getNodeGroup(
  GetNodeGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getNodeGroup:getNodeGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupResult.fromMap(result);
}
