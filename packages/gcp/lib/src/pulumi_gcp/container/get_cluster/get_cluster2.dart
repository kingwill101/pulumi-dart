import 'package:pulumi/pulumi.dart';
import 'get_cluster_args2.dart';
import 'get_cluster_result2.dart';

/// Get info about a GKE cluster from its name and location.
Future<GetClusterResult2> getCluster2(
  GetClusterArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getCluster:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult2.fromMap(result);
}
