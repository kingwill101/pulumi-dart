import 'package:pulumi/pulumi.dart';
import 'vpn_gateway_attachment_args.dart';

/// Provides a Virtual Private Gateway attachment resource, allowing for an existing
/// hardware VPN gateway to be attached and/or detached from a VPC.
///
/// > **Note:** The `aws.ec2.VpnGateway`
/// resource can also automatically attach the Virtual Private Gateway it creates
/// to an existing VPC by setting the `vpc_id` attribute accordingly.
///
/// ## Example Usage
///
///
///
/// See [Virtual Private Cloud](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Introduction.html)
/// and [Virtual Private Gateway](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) user
/// guides for more information.
///
/// ## Import
///
/// You cannot import this resource.
class VpnGatewayAttachment extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the VPC.
  late final Output<String> vpcId;

  /// The ID of the Virtual Private Gateway.
  late final Output<String> vpnGatewayId;

  VpnGatewayAttachment(
    String name, {
    VpnGatewayAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpnGatewayAttachment:VpnGatewayAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.vpcId = registerOutput<String>('vpcId');
    this.vpnGatewayId = registerOutput<String>('vpnGatewayId');
  }
}
