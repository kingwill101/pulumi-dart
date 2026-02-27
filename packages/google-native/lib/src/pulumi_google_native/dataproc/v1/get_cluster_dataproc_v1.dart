import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_dataproc_v1_args.dart';
import 'get_cluster_dataproc_v1_result.dart';

/// Gets the resource representation for a cluster in a project.
Future<GetClusterDataprocV1Result> getClusterDataprocV1(
  GetClusterDataprocV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterDataprocV1Result.fromMap(result);
}
