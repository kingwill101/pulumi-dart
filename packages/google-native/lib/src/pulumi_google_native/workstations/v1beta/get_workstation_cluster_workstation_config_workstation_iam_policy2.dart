import 'package:pulumi/pulumi.dart';
import 'get_workstation_cluster_workstation_config_workstation_iam_policy_args2.dart';
import 'get_workstation_cluster_workstation_config_workstation_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetWorkstationClusterWorkstationConfigWorkstationIamPolicyResult2>
    getWorkstationClusterWorkstationConfigWorkstationIamPolicy2(
  GetWorkstationClusterWorkstationConfigWorkstationIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1beta:getWorkstationClusterWorkstationConfigWorkstationIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkstationClusterWorkstationConfigWorkstationIamPolicyResult2
      .fromMap(result);
}
