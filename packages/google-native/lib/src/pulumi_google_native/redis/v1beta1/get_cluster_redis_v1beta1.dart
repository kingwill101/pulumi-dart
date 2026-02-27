import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_redis_v1beta1_args.dart';
import 'get_cluster_redis_v1beta1_result.dart';

/// Gets the details of a specific Redis cluster.
Future<GetClusterRedisV1beta1Result> getClusterRedisV1beta1(
  GetClusterRedisV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:redis/v1beta1:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterRedisV1beta1Result.fromMap(result);
}
