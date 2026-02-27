import 'package:pulumi/pulumi.dart';
import 'get_cluster_args4.dart';
import 'get_cluster_result4.dart';

/// Use this data source to get information about an ElastiCache Cluster
Future<GetClusterResult4> getCluster4(
  GetClusterArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getCluster:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult4.fromMap(result);
}
