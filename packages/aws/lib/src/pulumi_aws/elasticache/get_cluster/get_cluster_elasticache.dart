import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_elasticache_args.dart';
import 'get_cluster_elasticache_result.dart';

/// Use this data source to get information about an ElastiCache Cluster
Future<GetClusterElasticacheResult> getClusterElasticache(
  GetClusterElasticacheArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterElasticacheResult.fromMap(result);
}
