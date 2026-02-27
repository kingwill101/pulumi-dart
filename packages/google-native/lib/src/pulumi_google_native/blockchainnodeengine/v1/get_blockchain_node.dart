import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_blockchain_node_args.dart';
import 'get_blockchain_node_result.dart';

/// Gets details of a single blockchain node.
Future<GetBlockchainNodeResult> getBlockchainNode(
  GetBlockchainNodeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:blockchainnodeengine/v1:getBlockchainNode',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBlockchainNodeResult.fromMap(result);
}
