import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_machine_image_iam_policy_compute_v1_args.dart';
import 'get_machine_image_iam_policy_compute_v1_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetMachineImageIamPolicyComputeV1Result>
    getMachineImageIamPolicyComputeV1(
  GetMachineImageIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getMachineImageIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineImageIamPolicyComputeV1Result.fromMap(result);
}
