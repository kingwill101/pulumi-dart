import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_msk_args.dart';
import 'get_cluster_msk_result.dart';

/// Get information on an Amazon MSK Cluster.
///
/// > **Note:** This data sources returns information on _provisioned_ clusters.
Future<GetClusterMskResult> getClusterMsk(
  GetClusterMskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:msk/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterMskResult.fromMap(result);
}
