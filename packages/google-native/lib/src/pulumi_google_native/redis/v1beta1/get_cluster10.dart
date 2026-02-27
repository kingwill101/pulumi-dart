import 'package:pulumi/pulumi.dart' hide Config;
import 'get_cluster_args10.dart';
import 'get_cluster_result10.dart';

/// Gets the details of a specific Redis cluster.
Future<GetClusterResult10> getCluster10(
  GetClusterArgs10 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:redis/v1beta1:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult10.fromMap(result);
}
