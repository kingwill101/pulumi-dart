import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_iam_policy_compute_alpha_args.dart';
import 'get_instance_iam_policy_compute_alpha_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetInstanceIamPolicyComputeAlphaResult> getInstanceIamPolicyComputeAlpha(
  GetInstanceIamPolicyComputeAlphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyComputeAlphaResult.fromMap(result);
}
