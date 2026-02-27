import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_virtual_interface_args.dart';

/// Provides a Direct Connect public virtual interface resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Direct Connect public virtual interfaces using the VIF `id`. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/publicVirtualInterface:PublicVirtualInterface test dxvif-33cc44dd
/// ```
class PublicVirtualInterface extends pulumi.CustomResource {
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

  /// The name for the virtual interface.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A list of routes to be advertised to the AWS network in this region.
  late final pulumi.Output<List<String>> routeFilterPrefixes;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The VLAN ID.
  late final pulumi.Output<int> vlan;

  PublicVirtualInterface(
    String name, {
    PublicVirtualInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/publicVirtualInterface:PublicVirtualInterface',
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
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.routeFilterPrefixes =
        registerOutput<List<String>>('routeFilterPrefixes');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vlan = registerOutput<int>('vlan');
  }
}
