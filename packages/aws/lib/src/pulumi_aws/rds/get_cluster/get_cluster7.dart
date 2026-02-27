import 'package:pulumi/pulumi.dart';
import 'get_cluster_args7.dart';
import 'get_cluster_result7.dart';

/// Provides information about an RDS cluster.
Future<GetClusterResult7> getCluster7(
  GetClusterArgs7 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getCluster:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult7.fromMap(result);
}
