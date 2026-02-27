import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_group_compute_beta_args.dart';
import 'get_node_group_compute_beta_result.dart';

/// Returns the specified NodeGroup. Get a list of available NodeGroups by making a list() request. Note: the "nodes" field should not be used. Use nodeGroups.listNodes instead.
Future<GetNodeGroupComputeBetaResult> getNodeGroupComputeBeta(
  GetNodeGroupComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNodeGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupComputeBetaResult.fromMap(result);
}
