import 'package:pulumi/pulumi.dart' hide Config;
import 'get_interconnect_attachment_iam_policy_args.dart';
import 'get_interconnect_attachment_iam_policy_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetInterconnectAttachmentIamPolicyResult>
    getInterconnectAttachmentIamPolicy(
  GetInterconnectAttachmentIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInterconnectAttachmentIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInterconnectAttachmentIamPolicyResult.fromMap(result);
}
