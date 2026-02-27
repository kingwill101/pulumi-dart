import 'package:pulumi/pulumi.dart' hide Config;
import 'get_cluster_args4.dart';
import 'get_cluster_result4.dart';

/// Gets information about a cluster.
Future<GetClusterResult4> getCluster4(
  GetClusterArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult4.fromMap(result);
}
