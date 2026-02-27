import 'package:pulumi/pulumi.dart';
import 'get_cluster_args3.dart';
import 'get_cluster_result3.dart';

/// Use this data source to get information about a Redis Cluster. For more details, see the [API documentation](https://cloud.google.com/memorystore/docs/cluster/reference/rest/v1/projects.locations.clusters).
Future<GetClusterResult3> getCluster3(
  GetClusterArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:redis/getCluster:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult3.fromMap(result);
}
