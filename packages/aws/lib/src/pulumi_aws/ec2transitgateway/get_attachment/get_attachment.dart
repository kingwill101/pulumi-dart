import 'package:pulumi/pulumi.dart';
import 'get_attachment_args.dart';
import 'get_attachment_result.dart';

/// Get information on an EC2 Transit Gateway's attachment to a resource.
Future<GetAttachmentResult> getAttachment(
  GetAttachmentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getAttachment:getAttachment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAttachmentResult.fromMap(result);
}
