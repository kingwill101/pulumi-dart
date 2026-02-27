import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_attachment_iam_policy_compute_beta_args.dart';
import 'get_service_attachment_iam_policy_compute_beta_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetServiceAttachmentIamPolicyComputeBetaResult>
    getServiceAttachmentIamPolicyComputeBeta(
  GetServiceAttachmentIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getServiceAttachmentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceAttachmentIamPolicyComputeBetaResult.fromMap(result);
}
