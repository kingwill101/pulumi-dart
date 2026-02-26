import 'package:pulumi/pulumi.dart';
import 'get_cluster_args8.dart';
import 'get_cluster_result8.dart';

/// Gets the resource representation for a cluster in a project.
Future<GetClusterResult8> getCluster8(
  GetClusterArgs8 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult8.fromMap(result);
}
