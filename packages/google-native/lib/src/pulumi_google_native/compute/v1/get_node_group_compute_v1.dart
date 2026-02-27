import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_group_compute_v1_args.dart';
import 'get_node_group_compute_v1_result.dart';

/// Returns the specified NodeGroup. Get a list of available NodeGroups by making a list() request. Note: the "nodes" field should not be used. Use nodeGroups.listNodes instead.
Future<GetNodeGroupComputeV1Result> getNodeGroupComputeV1(
  GetNodeGroupComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNodeGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupComputeV1Result.fromMap(result);
}
