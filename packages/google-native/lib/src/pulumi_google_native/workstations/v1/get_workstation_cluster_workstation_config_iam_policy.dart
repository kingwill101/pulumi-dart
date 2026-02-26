import 'package:pulumi/pulumi.dart';
import 'get_workstation_cluster_workstation_config_iam_policy_args.dart';
import 'get_workstation_cluster_workstation_config_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetWorkstationClusterWorkstationConfigIamPolicyResult>
    getWorkstationClusterWorkstationConfigIamPolicy(
  GetWorkstationClusterWorkstationConfigIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1:getWorkstationClusterWorkstationConfigIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkstationClusterWorkstationConfigIamPolicyResult.fromMap(result);
}
