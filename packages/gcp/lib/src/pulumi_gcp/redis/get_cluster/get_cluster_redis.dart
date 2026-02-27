import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_redis_args.dart';
import 'get_cluster_redis_result.dart';

/// Use this data source to get information about a Redis Cluster. For more details, see the [API documentation](https://cloud.google.com/memorystore/docs/cluster/reference/rest/v1/projects.locations.clusters).
Future<GetClusterRedisResult> getClusterRedis(
  GetClusterRedisArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:redis/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterRedisResult.fromMap(result);
}
