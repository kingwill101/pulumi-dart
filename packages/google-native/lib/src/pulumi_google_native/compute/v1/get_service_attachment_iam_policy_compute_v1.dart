import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_attachment_iam_policy_compute_v1_args.dart';
import 'get_service_attachment_iam_policy_compute_v1_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetServiceAttachmentIamPolicyComputeV1Result>
    getServiceAttachmentIamPolicyComputeV1(
  GetServiceAttachmentIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getServiceAttachmentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceAttachmentIamPolicyComputeV1Result.fromMap(result);
}
