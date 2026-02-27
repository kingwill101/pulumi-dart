import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workstation_cluster_workstations_v1beta_args.dart';
import 'get_workstation_cluster_workstations_v1beta_result.dart';

/// Returns the requested workstation cluster.
Future<GetWorkstationClusterWorkstationsV1betaResult>
    getWorkstationClusterWorkstationsV1beta(
  GetWorkstationClusterWorkstationsV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1beta:getWorkstationCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkstationClusterWorkstationsV1betaResult.fromMap(result);
}
