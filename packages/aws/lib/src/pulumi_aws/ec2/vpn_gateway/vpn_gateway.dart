import 'package:pulumi/pulumi.dart';
import 'vpn_gateway_args.dart';

/// Provides a resource to create a VPC VPN Gateway.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPN Gateways using the VPN gateway `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpnGateway:VpnGateway testvpngateway vgw-9a4cacf3
/// ```
class VpnGateway extends CustomResource {
  /// The Autonomous System Number (ASN) for the Amazon side of the gateway. If you don't specify an ASN, the virtual private gateway is created with the default ASN.
  late final Output<String> amazonSideAsn;

  /// Amazon Resource Name (ARN) of the VPN Gateway.
  late final Output<String> arn;

  /// The Availability Zone for the virtual private gateway.
  late final Output<String?> availabilityZone;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The VPC ID to create in.
  late final Output<String> vpcId;

  VpnGateway(
    String name, {
    VpnGatewayArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpnGateway:VpnGateway',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.amazonSideAsn = registerOutput<String>('amazonSideAsn');
    this.arn = registerOutput<String>('arn');
    this.availabilityZone = registerOutput<String?>('availabilityZone');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
