import 'package:pulumi/pulumi.dart';
import 'get_direct_connect_gateway_attachment_args.dart';
import 'get_direct_connect_gateway_attachment_result.dart';

/// Get information on an EC2 Transit Gateway's attachment to a Direct Connect Gateway.
///
/// !> **Warning:** Using the `aws.ec2transitgateway.getDirectConnectGatewayAttachment` data source in combination with  `aws.ec2transitgateway.RouteTablePropagation` or `aws.ec2transitgateway.RouteTableAssociation` may result in lost connectivity due to unnecessary resource re-creation. To avoid this, use the `transit_gateway_attachment_id` attribute directly from the `aws.directconnect.GatewayAssociation` resource. For example, `transit_gateway_attachment_id  = aws_dx_gateway_association.example.transit_gateway_attachment_id`.
///
/// ## Example Usage
///
/// ### By Transit Gateway and Direct Connect Gateway Identifiers
Future<GetDirectConnectGatewayAttachmentResult>
    getDirectConnectGatewayAttachment(
  GetDirectConnectGatewayAttachmentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getDirectConnectGatewayAttachment:getDirectConnectGatewayAttachment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDirectConnectGatewayAttachmentResult.fromMap(result);
}
