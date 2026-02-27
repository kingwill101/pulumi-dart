import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_alloydb_v1alpha_args.dart';
import 'get_cluster_alloydb_v1alpha_result.dart';

/// Gets details of a single Cluster.
Future<GetClusterAlloydbV1alphaResult> getClusterAlloydbV1alpha(
  GetClusterAlloydbV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1alpha:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterAlloydbV1alphaResult.fromMap(result);
}
