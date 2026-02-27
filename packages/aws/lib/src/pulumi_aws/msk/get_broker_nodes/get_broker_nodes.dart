import 'package:pulumi/pulumi.dart';
import 'get_broker_nodes_args.dart';
import 'get_broker_nodes_result.dart';

/// Get information on an Amazon MSK Broker Nodes.
Future<GetBrokerNodesResult> getBrokerNodes(
  GetBrokerNodesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:msk/getBrokerNodes:getBrokerNodes',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBrokerNodesResult.fromMap(result);
}
