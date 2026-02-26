import 'package:pulumi/pulumi.dart';
import 'get_workstation_cluster_args2.dart';
import 'get_workstation_cluster_result2.dart';

/// Returns the requested workstation cluster.
Future<GetWorkstationClusterResult2> getWorkstationCluster2(
  GetWorkstationClusterArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1beta:getWorkstationCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkstationClusterResult2.fromMap(result);
}
