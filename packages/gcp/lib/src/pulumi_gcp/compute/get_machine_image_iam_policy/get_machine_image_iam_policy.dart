import 'package:pulumi/pulumi.dart';
import 'get_machine_image_iam_policy_args.dart';
import 'get_machine_image_iam_policy_result.dart';

Future<GetMachineImageIamPolicyResult> getMachineImageIamPolicy(
  GetMachineImageIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getMachineImageIamPolicy:getMachineImageIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMachineImageIamPolicyResult.fromMap(result);
}
