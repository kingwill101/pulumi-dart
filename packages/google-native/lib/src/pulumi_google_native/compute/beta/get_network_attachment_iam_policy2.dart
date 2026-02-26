import 'package:pulumi/pulumi.dart';
import 'get_network_attachment_iam_policy_args2.dart';
import 'get_network_attachment_iam_policy_result2.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetNetworkAttachmentIamPolicyResult2> getNetworkAttachmentIamPolicy2(
  GetNetworkAttachmentIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNetworkAttachmentIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkAttachmentIamPolicyResult2.fromMap(result);
}
