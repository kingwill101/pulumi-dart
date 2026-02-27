import 'package:pulumi/pulumi.dart' hide Config;
import 'get_envgroup_attachment_args.dart';
import 'get_envgroup_attachment_result.dart';

/// Gets an environment group attachment.
Future<GetEnvgroupAttachmentResult> getEnvgroupAttachment(
  GetEnvgroupAttachmentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getEnvgroupAttachment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEnvgroupAttachmentResult.fromMap(result);
}
