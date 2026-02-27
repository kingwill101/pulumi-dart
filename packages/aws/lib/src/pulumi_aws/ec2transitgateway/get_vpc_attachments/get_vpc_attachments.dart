import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_attachments_args.dart';
import 'get_vpc_attachments_result.dart';

/// Get information on EC2 Transit Gateway VPC Attachments.
///
/// ## Example Usage
///
/// ### By Filter
Future<GetVpcAttachmentsResult> getVpcAttachments(
  GetVpcAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getVpcAttachments:getVpcAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcAttachmentsResult.fromMap(result);
}
