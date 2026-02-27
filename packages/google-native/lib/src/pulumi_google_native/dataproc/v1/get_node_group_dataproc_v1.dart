import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_group_dataproc_v1_args.dart';
import 'get_node_group_dataproc_v1_result.dart';

/// Gets the resource representation for a node group in a cluster.
Future<GetNodeGroupDataprocV1Result> getNodeGroupDataprocV1(
  GetNodeGroupDataprocV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getNodeGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupDataprocV1Result.fromMap(result);
}
