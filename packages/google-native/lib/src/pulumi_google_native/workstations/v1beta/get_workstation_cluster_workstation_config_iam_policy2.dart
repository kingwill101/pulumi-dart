import 'package:pulumi/pulumi.dart';
import 'get_workstation_cluster_workstation_config_iam_policy_args2.dart';
import 'get_workstation_cluster_workstation_config_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetWorkstationClusterWorkstationConfigIamPolicyResult2>
    getWorkstationClusterWorkstationConfigIamPolicy2(
  GetWorkstationClusterWorkstationConfigIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1beta:getWorkstationClusterWorkstationConfigIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkstationClusterWorkstationConfigIamPolicyResult2.fromMap(result);
}
