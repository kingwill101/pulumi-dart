import 'package:pulumi/pulumi.dart';
import 'get_cluster_args8.dart';
import 'get_cluster_result8.dart';

/// Provides details about a specific redshift cluster.
Future<GetClusterResult8> getCluster8(
  GetClusterArgs8 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshift/getCluster:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult8.fromMap(result);
}
