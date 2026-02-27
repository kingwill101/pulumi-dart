import 'package:pulumi/pulumi.dart';
import 'transit_virtual_interface_args.dart';

/// Provides a Direct Connect transit virtual interface resource.
/// A transit virtual interface is a VLAN that transports traffic from a Direct Connect gateway to one or more transit gateways.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Direct Connect transit virtual interfaces using the VIF `id`. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/transitVirtualInterface:TransitVirtualInterface test dxvif-33cc44dd
/// ```
class TransitVirtualInterface extends CustomResource {
  /// The address family for the BGP peer. `ipv4 ` or `ipv6`.
  late final Output<String> addressFamily;

  /// The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers.
  late final Output<String> amazonAddress;
  late final Output<String> amazonSideAsn;

  /// The ARN of the virtual interface.
  late final Output<String> arn;

  /// The Direct Connect endpoint on which the virtual interface terminates.
  late final Output<String> awsDevice;

  /// The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
  late final Output<int> bgpAsn;

  /// The authentication key for BGP configuration.
  late final Output<String> bgpAuthKey;

  /// The ID of the Direct Connect connection (or LAG) on which to create the virtual interface.
  late final Output<String> connectionId;

  /// The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.
  late final Output<String> customerAddress;

  /// The ID of the Direct Connect gateway to which to connect the virtual interface.
  late final Output<String> dxGatewayId;

  /// Indicates whether jumbo frames (8500 MTU) are supported.
  late final Output<bool> jumboFrameCapable;

  /// The maximum transmission unit (MTU) is the size, in bytes, of the largest permissible packet that can be passed over the connection.
  /// The MTU of a virtual transit interface can be either `1500` or `8500` (jumbo frames). Default is `1500`.
  late final Output<int?> mtu;

  /// The name for the virtual interface.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Indicates whether to enable or disable SiteLink.
  late final Output<bool?> sitelinkEnabled;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The VLAN ID.
  late final Output<int> vlan;

  TransitVirtualInterface(
    String name, {
    TransitVirtualInterfaceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/transitVirtualInterface:TransitVirtualInterface',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.addressFamily = registerOutput<String>('addressFamily');
    this.amazonAddress = registerOutput<String>('amazonAddress');
    this.amazonSideAsn = registerOutput<String>('amazonSideAsn');
    this.arn = registerOutput<String>('arn');
    this.awsDevice = registerOutput<String>('awsDevice');
    this.bgpAsn = registerOutput<int>('bgpAsn');
    this.bgpAuthKey = registerOutput<String>('bgpAuthKey');
    this.connectionId = registerOutput<String>('connectionId');
    this.customerAddress = registerOutput<String>('customerAddress');
    this.dxGatewayId = registerOutput<String>('dxGatewayId');
    this.jumboFrameCapable = registerOutput<bool>('jumboFrameCapable');
    this.mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.sitelinkEnabled = registerOutput<bool?>('sitelinkEnabled');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vlan = registerOutput<int>('vlan');
  }
}
