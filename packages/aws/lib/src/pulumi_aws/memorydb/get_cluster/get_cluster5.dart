import 'package:pulumi/pulumi.dart';
import 'get_cluster_args5.dart';
import 'get_cluster_result5.dart';

/// Provides information about a MemoryDB Cluster.
Future<GetClusterResult5> getCluster5(
  GetClusterArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:memorydb/getCluster:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult5.fromMap(result);
}
