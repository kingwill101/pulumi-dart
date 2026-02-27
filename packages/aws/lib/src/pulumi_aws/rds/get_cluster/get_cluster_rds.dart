import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_rds_args.dart';
import 'get_cluster_rds_result.dart';

/// Provides information about an RDS cluster.
Future<GetClusterRdsResult> getClusterRds(
  GetClusterRdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterRdsResult.fromMap(result);
}
