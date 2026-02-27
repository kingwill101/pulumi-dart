import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_attachment_args.dart';
import 'get_vpn_attachment_result.dart';

/// Get information on an EC2 Transit Gateway VPN Attachment.
///
/// > EC2 Transit Gateway VPN Attachments are implicitly created by VPN Connections referencing an EC2 Transit Gateway so there is no managed resource. For ease, the `aws.ec2.VpnConnection` resource includes a `transit_gateway_attachment_id` attribute which can replace some usage of this data source. For tagging the attachment, see the `aws.ec2.Tag` resource.
///
/// ## Example Usage
///
/// ### By Transit Gateway and VPN Connection Identifiers
///
///
///
/// ### Filter
Future<GetVpnAttachmentResult> getVpnAttachment(
  GetVpnAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getVpnAttachment:getVpnAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnAttachmentResult.fromMap(result);
}
