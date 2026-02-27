import 'package:pulumi/pulumi.dart' hide Config;
import 'get_service_attachment_iam_policy_args2.dart';
import 'get_service_attachment_iam_policy_result2.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetServiceAttachmentIamPolicyResult2> getServiceAttachmentIamPolicy2(
  GetServiceAttachmentIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getServiceAttachmentIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceAttachmentIamPolicyResult2.fromMap(result);
}
