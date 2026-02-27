import 'package:pulumi/pulumi.dart';
import 'get_workstation_iam_policy_args.dart';
import 'get_workstation_iam_policy_result.dart';

Future<GetWorkstationIamPolicyResult> getWorkstationIamPolicy(
  GetWorkstationIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:workstations/getWorkstationIamPolicy:getWorkstationIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkstationIamPolicyResult.fromMap(result);
}
