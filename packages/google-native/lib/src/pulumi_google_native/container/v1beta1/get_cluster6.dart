import 'package:pulumi/pulumi.dart' hide Config;
import 'get_cluster_args6.dart';
import 'get_cluster_result6.dart';

/// Gets the details for a specific cluster.
Future<GetClusterResult6> getCluster6(
  GetClusterArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1beta1:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult6.fromMap(result);
}
