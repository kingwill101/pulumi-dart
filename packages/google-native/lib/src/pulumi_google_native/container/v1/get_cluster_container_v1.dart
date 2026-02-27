import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_container_v1_args.dart';
import 'get_cluster_container_v1_result.dart';

/// Gets the details of a specific cluster.
Future<GetClusterContainerV1Result> getClusterContainerV1(
  GetClusterContainerV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterContainerV1Result.fromMap(result);
}
