import 'package:pulumi/pulumi.dart';
import 'get_cluster_args11.dart';
import 'get_cluster_result11.dart';

/// Retrieves a `Cluster` resource by its resource name.
Future<GetClusterResult11> getCluster11(
  GetClusterArgs11 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult11.fromMap(result);
}
