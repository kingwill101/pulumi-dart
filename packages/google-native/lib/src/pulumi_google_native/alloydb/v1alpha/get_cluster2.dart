import 'package:pulumi/pulumi.dart';
import 'get_cluster_args2.dart';
import 'get_cluster_result2.dart';

/// Gets details of a single Cluster.
Future<GetClusterResult2> getCluster2(
  GetClusterArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1alpha:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult2.fromMap(result);
}
