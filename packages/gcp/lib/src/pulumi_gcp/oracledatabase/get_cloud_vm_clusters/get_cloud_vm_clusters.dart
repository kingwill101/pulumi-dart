import 'package:pulumi/pulumi.dart';
import 'get_cloud_vm_clusters_args.dart';
import 'get_cloud_vm_clusters_result.dart';

/// List all CloudVmClusters.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.cloudVmClusters).
Future<GetCloudVmClustersResult> getCloudVmClusters(
  GetCloudVmClustersArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getCloudVmClusters:getCloudVmClusters',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCloudVmClustersResult.fromMap(result);
}
