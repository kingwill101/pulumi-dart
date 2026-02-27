import 'package:pulumi/pulumi.dart';
import 'get_node_groups_args.dart';
import 'get_node_groups_result.dart';

/// Retrieve the EKS Node Groups associated with a named EKS cluster. This will allow you to pass a list of Node Group names to other resources.
Future<GetNodeGroupsResult> getNodeGroups(
  GetNodeGroupsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getNodeGroups:getNodeGroups',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupsResult.fromMap(result);
}
