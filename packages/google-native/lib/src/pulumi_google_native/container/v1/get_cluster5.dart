import 'package:pulumi/pulumi.dart' hide Config;
import 'get_cluster_args5.dart';
import 'get_cluster_result5.dart';

/// Gets the details of a specific cluster.
Future<GetClusterResult5> getCluster5(
  GetClusterArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult5.fromMap(result);
}
