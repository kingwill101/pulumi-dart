import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_template_iam_policy_compute_v1_args.dart';
import 'get_instance_template_iam_policy_compute_v1_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetInstanceTemplateIamPolicyComputeV1Result>
    getInstanceTemplateIamPolicyComputeV1(
  GetInstanceTemplateIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInstanceTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTemplateIamPolicyComputeV1Result.fromMap(result);
}
