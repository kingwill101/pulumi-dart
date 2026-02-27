import 'package:pulumi/pulumi.dart';
import 'get_cluster_args6.dart';
import 'get_cluster_result6.dart';

/// Get information on an Amazon MSK Cluster.
///
/// > **Note:** This data sources returns information on _provisioned_ clusters.
Future<GetClusterResult6> getCluster6(
  GetClusterArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:msk/getCluster:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult6.fromMap(result);
}
