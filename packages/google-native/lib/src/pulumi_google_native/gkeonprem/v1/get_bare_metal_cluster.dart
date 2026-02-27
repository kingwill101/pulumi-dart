import 'package:pulumi/pulumi.dart' hide Config;
import 'get_bare_metal_cluster_args.dart';
import 'get_bare_metal_cluster_result.dart';

/// Gets details of a single bare metal Cluster.
Future<GetBareMetalClusterResult> getBareMetalCluster(
  GetBareMetalClusterArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBareMetalClusterResult.fromMap(result);
}
