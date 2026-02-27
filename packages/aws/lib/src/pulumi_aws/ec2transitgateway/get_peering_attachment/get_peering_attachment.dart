import 'package:pulumi/pulumi.dart' as pulumi;
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
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getPeeringAttachment:getPeeringAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPeeringAttachmentResult.fromMap(result);
}
