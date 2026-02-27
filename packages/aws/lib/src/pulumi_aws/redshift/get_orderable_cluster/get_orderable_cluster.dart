import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_orderable_cluster_args.dart';
import 'get_orderable_cluster_result.dart';

/// Information about Redshift Orderable Clusters and valid parameter combinations.
Future<GetOrderableClusterResult> getOrderableCluster(
  GetOrderableClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshift/getOrderableCluster:getOrderableCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrderableClusterResult.fromMap(result);
}
