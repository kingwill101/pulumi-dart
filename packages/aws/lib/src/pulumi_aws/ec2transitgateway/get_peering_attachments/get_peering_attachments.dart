import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_peering_attachments_args.dart';
import 'get_peering_attachments_result.dart';

/// Get information on EC2 Transit Gateway Peering Attachments.
///
/// ## Example Usage
///
/// ### All Resources
///
///
///
/// ### By Filter
Future<GetPeeringAttachmentsResult> getPeeringAttachments(
  GetPeeringAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getPeeringAttachments:getPeeringAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPeeringAttachmentsResult.fromMap(result);
}
