import 'package:pulumi/pulumi.dart';
import 'get_virtual_cluster_args.dart';
import 'get_virtual_cluster_result.dart';

/// Retrieve information about an EMR Containers (EMR on EKS) Virtual Cluster.
Future<GetVirtualClusterResult> getVirtualCluster(
  GetVirtualClusterArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:emrcontainers/getVirtualCluster:getVirtualCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVirtualClusterResult.fromMap(result);
}
