import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_container_v1beta1_args.dart';
import 'get_cluster_container_v1beta1_result.dart';

/// Gets the details for a specific cluster.
Future<GetClusterContainerV1beta1Result> getClusterContainerV1beta1(
  GetClusterContainerV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1beta1:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterContainerV1beta1Result.fromMap(result);
}
