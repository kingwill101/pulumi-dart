import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workstation_config_iam_policy_args.dart';
import 'get_workstation_config_iam_policy_result.dart';

Future<GetWorkstationConfigIamPolicyResult> getWorkstationConfigIamPolicy(
  GetWorkstationConfigIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:workstations/getWorkstationConfigIamPolicy:getWorkstationConfigIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkstationConfigIamPolicyResult.fromMap(result);
}
