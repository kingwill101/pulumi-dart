import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_args.dart';
import 'get_clusters_result.dart';

/// Data source for managing an AWS ECS (Elastic Container) Clusters.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetClustersResult> getClusters(
  GetClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecs/getClusters:getClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClustersResult.fromMap(result);
}
