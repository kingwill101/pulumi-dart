import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_memorydb_args.dart';
import 'get_cluster_memorydb_result.dart';

/// Provides information about a MemoryDB Cluster.
Future<GetClusterMemorydbResult> getClusterMemorydb(
  GetClusterMemorydbArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:memorydb/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterMemorydbResult.fromMap(result);
}
