import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_attachment_iam_policy_args.dart';
import 'get_service_attachment_iam_policy_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetServiceAttachmentIamPolicyResult> getServiceAttachmentIamPolicy(
  GetServiceAttachmentIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getServiceAttachmentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceAttachmentIamPolicyResult.fromMap(result);
}
