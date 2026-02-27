import 'package:pulumi/pulumi.dart';
import 'customer_gateway_args.dart';

/// Provides a customer gateway inside a VPC. These objects can be connected to VPN gateways via VPN connections, and allow you to establish tunnels between your network and the VPC.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Customer Gateways using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/customerGateway:CustomerGateway main cgw-b4dc3961
/// ```
class CustomerGateway extends CustomResource {
  /// The ARN of the customer gateway.
  late final Output<String> arn;

  /// The gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN). Valid values are from  `1` to `2147483647`. Conflicts with `bgp_asn_extended`.
  late final Output<String?> bgpAsn;

  /// The gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN). Valid values are from  `2147483648` to `4294967295` Conflicts with `bgp_asn`.
  late final Output<String?> bgpAsnExtended;

  /// The Amazon Resource Name (ARN) for the customer gateway certificate.
  late final Output<String?> certificateArn;

  /// A name for the customer gateway device.
  late final Output<String?> deviceName;

  /// The IPv4 address for the customer gateway device's outside interface.
  late final Output<String?> ipAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Tags to apply to the gateway. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The type of customer gateway. The only type AWS
  /// supports at this time is "ipsec.1".
  late final Output<String> type;

  CustomerGateway(
    String name, {
    CustomerGatewayArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/customerGateway:CustomerGateway',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.bgpAsn = registerOutput<String?>('bgpAsn');
    this.bgpAsnExtended = registerOutput<String?>('bgpAsnExtended');
    this.certificateArn = registerOutput<String?>('certificateArn');
    this.deviceName = registerOutput<String?>('deviceName');
    this.ipAddress = registerOutput<String?>('ipAddress');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }
}
