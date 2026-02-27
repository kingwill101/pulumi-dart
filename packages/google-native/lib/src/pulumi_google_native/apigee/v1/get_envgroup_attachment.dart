import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_envgroup_attachment_args.dart';
import 'get_envgroup_attachment_result.dart';

/// Gets an environment group attachment.
Future<GetEnvgroupAttachmentResult> getEnvgroupAttachment(
  GetEnvgroupAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getEnvgroupAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvgroupAttachmentResult.fromMap(result);
}
