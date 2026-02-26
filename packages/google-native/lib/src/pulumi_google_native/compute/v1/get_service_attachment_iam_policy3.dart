import 'package:pulumi/pulumi.dart';
import 'get_service_attachment_iam_policy_args3.dart';
import 'get_service_attachment_iam_policy_result3.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetServiceAttachmentIamPolicyResult3> getServiceAttachmentIamPolicy3(
  GetServiceAttachmentIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getServiceAttachmentIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceAttachmentIamPolicyResult3.fromMap(result);
}
