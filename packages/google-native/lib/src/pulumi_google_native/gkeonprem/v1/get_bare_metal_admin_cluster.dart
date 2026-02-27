import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bare_metal_admin_cluster_args.dart';
import 'get_bare_metal_admin_cluster_result.dart';

/// Gets details of a single bare metal admin cluster.
Future<GetBareMetalAdminClusterResult> getBareMetalAdminCluster(
  GetBareMetalAdminClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalAdminCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBareMetalAdminClusterResult.fromMap(result);
}
