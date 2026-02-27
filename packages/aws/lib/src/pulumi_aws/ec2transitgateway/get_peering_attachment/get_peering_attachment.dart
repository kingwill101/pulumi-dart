import 'package:pulumi/pulumi.dart';
import 'get_peering_attachment_args.dart';
import 'get_peering_attachment_result.dart';

/// Get information on an EC2 Transit Gateway Peering Attachment.
///
/// ## Example Usage
///
/// ### By Filter
///
///
///
/// ### By Identifier
Future<GetPeeringAttachmentResult> getPeeringAttachment(
  GetPeeringAttachmentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getPeeringAttachment:getPeeringAttachment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPeeringAttachmentResult.fromMap(result);
}
