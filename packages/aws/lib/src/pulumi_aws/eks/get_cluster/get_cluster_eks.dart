import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_eks_args.dart';
import 'get_cluster_eks_result.dart';

/// Retrieve information about an EKS Cluster.
Future<GetClusterEksResult> getClusterEks(
  GetClusterEksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterEksResult.fromMap(result);
}
