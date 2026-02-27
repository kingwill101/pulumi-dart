import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosted_transit_virtual_interface_args.dart';

/// Provides a Direct Connect hosted transit virtual interface resource.
/// This resource represents the allocator's side of the hosted virtual interface.
/// A hosted virtual interface is a virtual interface that is owned by another AWS account.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Direct Connect hosted transit virtual interfaces using the VIF `id`. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/hostedTransitVirtualInterface:HostedTransitVirtualInterface test dxvif-33cc44dd
/// ```
class HostedTransitVirtualInterface extends pulumi.CustomResource {
  /// The address family for the BGP peer. `ipv4 ` or `ipv6`.
  late final pulumi.Output<String> addressFamily;

  /// The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers.
  late final pulumi.Output<String> amazonAddress;
  late final pulumi.Output<String> amazonSideAsn;

  /// The ARN of the virtual interface.
  late final pulumi.Output<String> arn;

  /// The Direct Connect endpoint on which the virtual interface terminates.
  late final pulumi.Output<String> awsDevice;

  /// The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
  late final pulumi.Output<int> bgpAsn;

  /// The authentication key for BGP configuration.
  late final pulumi.Output<String> bgpAuthKey;

  /// The ID of the Direct Connect connection (or LAG) on which to create the virtual interface.
  late final pulumi.Output<String> connectionId;

  /// The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.
  late final pulumi.Output<String> customerAddress;

  /// Indicates whether jumbo frames (8500 MTU) are supported.
  late final pulumi.Output<bool> jumboFrameCapable;

  /// The maximum transmission unit (MTU) is the size, in bytes, of the largest permissible packet that can be passed over the connection. The MTU of a virtual transit interface can be either `1500` or `8500` (jumbo frames). Default is `1500`.
  late final pulumi.Output<int?> mtu;

  /// The name for the virtual interface.
  late final pulumi.Output<String> name;

  /// The AWS account that will own the new virtual interface.
  late final pulumi.Output<String> ownerAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The VLAN ID.
  late final pulumi.Output<int> vlan;

  HostedTransitVirtualInterface(
    String name, {
    HostedTransitVirtualInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/hostedTransitVirtualInterface:HostedTransitVirtualInterface',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
    this.jumboFrameCapable = registerOutput<bool>('jumboFrameCapable');
    this.mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.region = registerOutput<String>('region');
    this.vlan = registerOutput<int>('vlan');
  }
}
