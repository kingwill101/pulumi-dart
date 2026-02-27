import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_ecs_args.dart';
import 'get_cluster_ecs_result.dart';

/// The ECS Cluster data source allows access to details of a specific
/// cluster within an AWS ECS service.
Future<GetClusterEcsResult> getClusterEcs(
  GetClusterEcsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecs/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterEcsResult.fromMap(result);
}
