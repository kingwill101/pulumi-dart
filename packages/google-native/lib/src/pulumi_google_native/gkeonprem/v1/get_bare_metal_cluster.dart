import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bare_metal_cluster_args.dart';
import 'get_bare_metal_cluster_result.dart';

/// Gets details of a single bare metal Cluster.
Future<GetBareMetalClusterResult> getBareMetalCluster(
  GetBareMetalClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBareMetalClusterResult.fromMap(result);
}
