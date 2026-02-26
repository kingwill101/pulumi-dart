import 'package:pulumi/pulumi.dart';
import 'get_instance_attachment_args.dart';
import 'get_instance_attachment_result.dart';

/// Gets an attachment. **Note:** Not supported for Apigee hybrid.
Future<GetInstanceAttachmentResult> getInstanceAttachment(
  GetInstanceAttachmentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getInstanceAttachment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceAttachmentResult.fromMap(result);
}
