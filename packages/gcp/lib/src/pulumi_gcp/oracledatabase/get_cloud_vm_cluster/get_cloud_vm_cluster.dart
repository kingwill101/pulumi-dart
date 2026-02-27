import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_vm_cluster_args.dart';
import 'get_cloud_vm_cluster_result.dart';

/// Get information about a CloudVmCluster.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.cloudVmClusters).
Future<GetCloudVmClusterResult> getCloudVmCluster(
  GetCloudVmClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getCloudVmCluster:getCloudVmCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudVmClusterResult.fromMap(result);
}
