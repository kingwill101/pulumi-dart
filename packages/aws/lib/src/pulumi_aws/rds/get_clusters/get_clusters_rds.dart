import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_rds_args.dart';
import 'get_clusters_rds_result.dart';

/// Data source for managing an AWS RDS (Relational Database) Clusters.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetClustersRdsResult> getClustersRds(
  GetClustersRdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getClusters:getClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClustersRdsResult.fromMap(result);
}
