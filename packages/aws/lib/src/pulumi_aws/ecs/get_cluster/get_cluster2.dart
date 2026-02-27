import 'package:pulumi/pulumi.dart';
import 'get_cluster_args2.dart';
import 'get_cluster_result2.dart';

/// The ECS Cluster data source allows access to details of a specific
/// cluster within an AWS ECS service.
Future<GetClusterResult2> getCluster2(
  GetClusterArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecs/getCluster:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult2.fromMap(result);
}
