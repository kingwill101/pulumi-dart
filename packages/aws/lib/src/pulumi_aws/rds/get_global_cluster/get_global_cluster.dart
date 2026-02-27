import 'package:pulumi/pulumi.dart';
import 'get_global_cluster_args.dart';
import 'get_global_cluster_result.dart';

/// Data source for managing an AWS RDS (Relational Database) Global Cluster.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetGlobalClusterResult> getGlobalCluster(
  GetGlobalClusterArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getGlobalCluster:getGlobalCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGlobalClusterResult.fromMap(result);
}
