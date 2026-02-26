import 'package:pulumi/pulumi.dart';
import 'get_cluster_args9.dart';
import 'get_cluster_result9.dart';

/// Gets the details of a specific Redis cluster.
Future<GetClusterResult9> getCluster9(
  GetClusterArgs9 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:redis/v1:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult9.fromMap(result);
}
