import 'package:pulumi/pulumi.dart';
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';

/// Use this data source to get information about a CloudHSM v2 cluster
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudhsmv2/getCluster:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}
