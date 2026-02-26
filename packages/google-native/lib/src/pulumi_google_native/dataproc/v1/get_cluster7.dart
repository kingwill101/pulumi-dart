import 'package:pulumi/pulumi.dart';
import 'get_cluster_args7.dart';
import 'get_cluster_result7.dart';

/// Gets the resource representation for a cluster in a project.
Future<GetClusterResult7> getCluster7(
  GetClusterArgs7 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult7.fromMap(result);
}
