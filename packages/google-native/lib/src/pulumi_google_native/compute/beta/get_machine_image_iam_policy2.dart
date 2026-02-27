import 'package:pulumi/pulumi.dart' hide Config;
import 'get_machine_image_iam_policy_args2.dart';
import 'get_machine_image_iam_policy_result2.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetMachineImageIamPolicyResult2> getMachineImageIamPolicy2(
  GetMachineImageIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getMachineImageIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMachineImageIamPolicyResult2.fromMap(result);
}
