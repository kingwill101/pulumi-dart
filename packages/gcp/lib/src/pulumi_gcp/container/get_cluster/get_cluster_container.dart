import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_container_args.dart';
import 'get_cluster_container_result.dart';

/// Get info about a GKE cluster from its name and location.
Future<GetClusterContainerResult> getClusterContainer(
  GetClusterContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterContainerResult.fromMap(result);
}
