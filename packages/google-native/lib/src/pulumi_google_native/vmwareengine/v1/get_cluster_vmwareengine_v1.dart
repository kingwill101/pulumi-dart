import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_vmwareengine_v1_args.dart';
import 'get_cluster_vmwareengine_v1_result.dart';

/// Retrieves a `Cluster` resource by its resource name.
Future<GetClusterVmwareengineV1Result> getClusterVmwareengineV1(
  GetClusterVmwareengineV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterVmwareengineV1Result.fromMap(result);
}
