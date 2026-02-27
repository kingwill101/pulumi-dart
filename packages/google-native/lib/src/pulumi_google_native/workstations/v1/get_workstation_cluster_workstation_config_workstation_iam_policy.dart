import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workstation_cluster_workstation_config_workstation_iam_policy_args.dart';
import 'get_workstation_cluster_workstation_config_workstation_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetWorkstationClusterWorkstationConfigWorkstationIamPolicyResult>
    getWorkstationClusterWorkstationConfigWorkstationIamPolicy(
  GetWorkstationClusterWorkstationConfigWorkstationIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1:getWorkstationClusterWorkstationConfigWorkstationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkstationClusterWorkstationConfigWorkstationIamPolicyResult
      .fromMap(result);
}
