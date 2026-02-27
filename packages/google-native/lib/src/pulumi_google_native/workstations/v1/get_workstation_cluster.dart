import 'package:pulumi/pulumi.dart' hide Config;
import 'get_workstation_cluster_args.dart';
import 'get_workstation_cluster_result.dart';

/// Returns the requested workstation cluster.
Future<GetWorkstationClusterResult> getWorkstationCluster(
  GetWorkstationClusterArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1:getWorkstationCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkstationClusterResult.fromMap(result);
}
