import 'package:pulumi/pulumi.dart';
import 'get_orderable_cluster_args.dart';
import 'get_orderable_cluster_result.dart';

/// Information about Redshift Orderable Clusters and valid parameter combinations.
Future<GetOrderableClusterResult> getOrderableCluster(
  GetOrderableClusterArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshift/getOrderableCluster:getOrderableCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrderableClusterResult.fromMap(result);
}
