import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workstation_cluster_workstation_config_iam_policy_workstations_v1beta_args.dart';
import 'get_workstation_cluster_workstation_config_iam_policy_workstations_v1beta_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetWorkstationClusterWorkstationConfigIamPolicyWorkstationsV1betaResult>
    getWorkstationClusterWorkstationConfigIamPolicyWorkstationsV1beta(
  GetWorkstationClusterWorkstationConfigIamPolicyWorkstationsV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1beta:getWorkstationClusterWorkstationConfigIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkstationClusterWorkstationConfigIamPolicyWorkstationsV1betaResult
      .fromMap(result);
}
