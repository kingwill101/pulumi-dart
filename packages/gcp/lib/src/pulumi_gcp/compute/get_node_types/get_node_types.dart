import 'package:pulumi/pulumi.dart';
import 'get_node_types_args.dart';
import 'get_node_types_result.dart';

/// Provides available node types for Compute Engine sole-tenant nodes in a zone
/// for a given project. For more information, see [the official documentation](https://cloud.google.com/compute/docs/nodes/#types) and [API](https://cloud.google.com/compute/docs/reference/rest/v1/nodeTypes).
Future<GetNodeTypesResult> getNodeTypes(
  GetNodeTypesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNodeTypes:getNodeTypes',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeTypesResult.fromMap(result);
}
