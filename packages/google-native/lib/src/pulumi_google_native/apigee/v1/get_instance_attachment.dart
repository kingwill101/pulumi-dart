import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_attachment_args.dart';
import 'get_instance_attachment_result.dart';

/// Gets an attachment. **Note:** Not supported for Apigee hybrid.
Future<GetInstanceAttachmentResult> getInstanceAttachment(
  GetInstanceAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getInstanceAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceAttachmentResult.fromMap(result);
}
