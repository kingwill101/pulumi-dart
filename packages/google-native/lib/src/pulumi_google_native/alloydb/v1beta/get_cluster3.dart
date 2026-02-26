import 'package:pulumi/pulumi.dart';
import 'get_cluster_args3.dart';
import 'get_cluster_result3.dart';

/// Gets details of a single Cluster.
Future<GetClusterResult3> getCluster3(
  GetClusterArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1beta:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult3.fromMap(result);
}
