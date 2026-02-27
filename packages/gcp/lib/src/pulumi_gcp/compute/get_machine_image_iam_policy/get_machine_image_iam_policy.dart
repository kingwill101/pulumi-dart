import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_machine_image_iam_policy_args.dart';
import 'get_machine_image_iam_policy_result.dart';

Future<GetMachineImageIamPolicyResult> getMachineImageIamPolicy(
  GetMachineImageIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getMachineImageIamPolicy:getMachineImageIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineImageIamPolicyResult.fromMap(result);
}
