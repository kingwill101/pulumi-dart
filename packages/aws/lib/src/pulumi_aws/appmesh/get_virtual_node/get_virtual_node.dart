import 'package:pulumi/pulumi.dart';
import 'get_virtual_node_args.dart';
import 'get_virtual_node_result.dart';

/// Data source for managing an AWS App Mesh Virtual Node.
Future<GetVirtualNodeResult> getVirtualNode(
  GetVirtualNodeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appmesh/getVirtualNode:getVirtualNode',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVirtualNodeResult.fromMap(result);
}
