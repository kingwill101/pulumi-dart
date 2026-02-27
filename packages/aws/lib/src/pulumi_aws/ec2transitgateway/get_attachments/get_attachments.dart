import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_attachments_args.dart';
import 'get_attachments_result.dart';

/// Get information on EC2 Transit Gateway Attachments.
///
/// ## Example Usage
///
/// ### By Filter
Future<GetAttachmentsResult> getAttachments(
  GetAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getAttachments:getAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttachmentsResult.fromMap(result);
}
