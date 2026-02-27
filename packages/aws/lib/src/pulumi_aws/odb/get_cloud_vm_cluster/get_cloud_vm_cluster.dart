import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_vm_cluster_args.dart';
import 'get_cloud_vm_cluster_result.dart';

/// Data source for cloud vm cluster in AWS for Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetCloudVmClusterResult> getCloudVmCluster(
  GetCloudVmClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getCloudVmCluster:getCloudVmCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudVmClusterResult.fromMap(result);
}
