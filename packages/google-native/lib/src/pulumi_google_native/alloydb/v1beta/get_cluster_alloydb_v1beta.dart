import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_alloydb_v1beta_args.dart';
import 'get_cluster_alloydb_v1beta_result.dart';

/// Gets details of a single Cluster.
Future<GetClusterAlloydbV1betaResult> getClusterAlloydbV1beta(
  GetClusterAlloydbV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1beta:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterAlloydbV1betaResult.fromMap(result);
}
