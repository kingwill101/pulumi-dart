import 'package:pulumi/pulumi.dart';
import 'get_cluster_args3.dart';
import 'get_cluster_result3.dart';

/// Retrieve information about an EKS Cluster.
Future<GetClusterResult3> getCluster3(
  GetClusterArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getCluster:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult3.fromMap(result);
}
