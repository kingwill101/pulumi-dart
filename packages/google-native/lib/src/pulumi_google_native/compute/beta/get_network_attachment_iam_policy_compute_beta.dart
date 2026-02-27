import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_attachment_iam_policy_compute_beta_args.dart';
import 'get_network_attachment_iam_policy_compute_beta_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetNetworkAttachmentIamPolicyComputeBetaResult>
    getNetworkAttachmentIamPolicyComputeBeta(
  GetNetworkAttachmentIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNetworkAttachmentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkAttachmentIamPolicyComputeBetaResult.fromMap(result);
}
