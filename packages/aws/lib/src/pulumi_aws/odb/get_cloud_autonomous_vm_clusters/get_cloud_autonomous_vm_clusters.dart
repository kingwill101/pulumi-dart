import 'package:pulumi/pulumi.dart';
import 'get_cloud_autonomous_vm_clusters_args.dart';
import 'get_cloud_autonomous_vm_clusters_result.dart';

/// Data source for managing cloud autonomous vm clusters in AWS for Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetCloudAutonomousVmClustersResult> getCloudAutonomousVmClusters(
  GetCloudAutonomousVmClustersArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getCloudAutonomousVmClusters:getCloudAutonomousVmClusters',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCloudAutonomousVmClustersResult.fromMap(result);
}
