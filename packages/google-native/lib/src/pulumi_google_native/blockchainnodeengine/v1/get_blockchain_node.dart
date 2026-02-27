import 'package:pulumi/pulumi.dart' hide Config;
import 'get_blockchain_node_args.dart';
import 'get_blockchain_node_result.dart';

/// Gets details of a single blockchain node.
Future<GetBlockchainNodeResult> getBlockchainNode(
  GetBlockchainNodeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:blockchainnodeengine/v1:getBlockchainNode',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBlockchainNodeResult.fromMap(result);
}
