import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_eks_args.dart';
import 'get_clusters_eks_result.dart';

/// Retrieve EKS Clusters list
Future<GetClustersEksResult> getClustersEks(
  GetClustersEksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getClusters:getClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClustersEksResult.fromMap(result);
}
