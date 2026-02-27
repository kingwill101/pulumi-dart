import 'package:pulumi/pulumi.dart';
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';

/// Use this data source to get information about the available cluster. For more details refer the [API docs](https://cloud.google.com/alloydb/docs/reference/rest/v1/projects.locations.clusters).
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:alloydb/getCluster:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}
