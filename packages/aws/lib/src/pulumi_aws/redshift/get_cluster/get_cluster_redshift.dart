import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_redshift_args.dart';
import 'get_cluster_redshift_result.dart';

/// Provides details about a specific redshift cluster.
Future<GetClusterRedshiftResult> getClusterRedshift(
  GetClusterRedshiftArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshift/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterRedshiftResult.fromMap(result);
}
