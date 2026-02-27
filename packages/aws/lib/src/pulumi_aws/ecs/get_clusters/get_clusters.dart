import 'package:pulumi/pulumi.dart';
import 'get_clusters_args.dart';
import 'get_clusters_result.dart';

/// Data source for managing an AWS ECS (Elastic Container) Clusters.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetClustersResult> getClusters(
  GetClustersArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecs/getClusters:getClusters',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClustersResult.fromMap(result);
}
