import 'package:pulumi/pulumi.dart';
import 'get_clusters_args2.dart';
import 'get_clusters_result2.dart';

/// Retrieve EKS Clusters list
Future<GetClustersResult2> getClusters2(
  GetClustersArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getClusters:getClusters',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClustersResult2.fromMap(result);
}
