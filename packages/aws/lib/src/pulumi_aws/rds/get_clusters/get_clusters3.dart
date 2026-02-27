import 'package:pulumi/pulumi.dart';
import 'get_clusters_args3.dart';
import 'get_clusters_result3.dart';

/// Data source for managing an AWS RDS (Relational Database) Clusters.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetClustersResult3> getClusters3(
  GetClustersArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getClusters:getClusters',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClustersResult3.fromMap(result);
}
