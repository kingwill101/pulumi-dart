import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_dataproc_v1beta2_args.dart';
import 'get_cluster_dataproc_v1beta2_result.dart';

/// Gets the resource representation for a cluster in a project.
Future<GetClusterDataprocV1beta2Result> getClusterDataprocV1beta2(
  GetClusterDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterDataprocV1beta2Result.fromMap(result);
}
