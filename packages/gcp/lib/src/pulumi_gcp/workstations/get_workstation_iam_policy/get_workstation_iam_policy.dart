import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workstation_iam_policy_args.dart';
import 'get_workstation_iam_policy_result.dart';

Future<GetWorkstationIamPolicyResult> getWorkstationIamPolicy(
  GetWorkstationIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:workstations/getWorkstationIamPolicy:getWorkstationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkstationIamPolicyResult.fromMap(result);
}
