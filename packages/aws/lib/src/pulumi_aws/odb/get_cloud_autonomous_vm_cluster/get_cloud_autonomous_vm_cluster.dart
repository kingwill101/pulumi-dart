import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_autonomous_vm_cluster_args.dart';
import 'get_cloud_autonomous_vm_cluster_result.dart';

/// Data source for managing cloud autonomous vm cluster resource in AWS for Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetCloudAutonomousVmClusterResult> getCloudAutonomousVmCluster(
  GetCloudAutonomousVmClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getCloudAutonomousVmCluster:getCloudAutonomousVmCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudAutonomousVmClusterResult.fromMap(result);
}
