import 'package:pulumi/pulumi.dart';
import 'get_cloud_vm_clusters_args.dart';
import 'get_cloud_vm_clusters_result.dart';

/// Data source for retrieving all cloud vm clusters AWS for Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetCloudVmClustersResult> getCloudVmClusters(
  GetCloudVmClustersArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getCloudVmClusters:getCloudVmClusters',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCloudVmClustersResult.fromMap(result);
}
