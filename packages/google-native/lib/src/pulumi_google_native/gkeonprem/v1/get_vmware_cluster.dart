import 'package:pulumi/pulumi.dart' hide Config;
import 'get_vmware_cluster_args.dart';
import 'get_vmware_cluster_result.dart';

/// Gets details of a single VMware Cluster.
Future<GetVmwareClusterResult> getVmwareCluster(
  GetVmwareClusterArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVmwareClusterResult.fromMap(result);
}
