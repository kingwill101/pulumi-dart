import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_attachment_args.dart';
import 'get_vpc_attachment_result.dart';

/// Get information on an EC2 Transit Gateway VPC Attachment.
///
/// !> **Warning:** Using the `aws.ec2transitgateway.VpcAttachment` data source in combination with  `aws.ec2transitgateway.RouteTablePropagation` or `aws.ec2transitgateway.RouteTableAssociation` may result in lost connectivity due to unnecessary resource re-creation. To avoid this, use the `id` attribute directly from the `aws.ec2transitgateway.VpcAttachment` _resource_. For example, `transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.example.id`.
///
/// ## Example Usage
///
/// ### By Filter
///
///
///
/// ### By Identifier
Future<GetVpcAttachmentResult> getVpcAttachment(
  GetVpcAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getVpcAttachment:getVpcAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcAttachmentResult.fromMap(result);
}
