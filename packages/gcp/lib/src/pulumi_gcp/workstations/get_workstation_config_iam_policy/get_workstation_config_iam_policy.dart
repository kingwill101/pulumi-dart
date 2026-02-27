import 'package:pulumi/pulumi.dart';
import 'get_workstation_config_iam_policy_args.dart';
import 'get_workstation_config_iam_policy_result.dart';

Future<GetWorkstationConfigIamPolicyResult> getWorkstationConfigIamPolicy(
  GetWorkstationConfigIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:workstations/getWorkstationConfigIamPolicy:getWorkstationConfigIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkstationConfigIamPolicyResult.fromMap(result);
}
