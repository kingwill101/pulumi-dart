import 'package:pulumi/pulumi.dart' as pulumi;
import '../subnet_dhcp_address_range/subnet_dhcp_address_range.dart';
import 'subnet_vmwareengine_args.dart';

/// Subnet in a private cloud. A Private Cloud contains two types of subnets: `management` subnets (such as vMotion) that
/// are read-only,and `userDefined`, which can also be updated. This resource should be used to read and update `userDefined`
/// subnets. To read `management` subnets, please utilize the subnet data source.
///
///
/// To get more information about Subnet, see:
///
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds.subnets)
///
/// ## Example Usage
///
/// ### Vmware Engine Subnet User Defined
///
///
///
///
/// ## Import
///
/// Subnet can be imported using any of these accepted formats:
///
/// * `{{parent}}/subnets/{{name}}`
///
/// When using the `pulumi import` command, Subnet can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/subnet:Subnet default {{parent}}/subnets/{{name}}
/// ```
class SubnetVmwareengine extends pulumi.CustomResource {
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// DHCP address ranges.
  /// Structure is documented below.
  late final pulumi.Output<List<SubnetDhcpAddressRange>> dhcpAddressRanges;

  /// The canonical identifier of the logical router that this subnet is attached to.
  late final pulumi.Output<String> gatewayId;

  /// The IP address of the gateway of this subnet. Must fall within the IP prefix defined above.
  late final pulumi.Output<String> gatewayIp;

  /// The IP address range of the subnet in CIDR format.
  late final pulumi.Output<String> ipCidrRange;

  /// The ID of the subnet. For userDefined subnets, this name should be in the format of "service-n",
  /// where n ranges from 1 to 5.
  late final pulumi.Output<String> name;

  /// The resource name of the private cloud to create a new subnet in.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
  late final pulumi.Output<String> parent;

  /// Whether the NSX-T configuration in the backend follows the standard configuration supported by Google Cloud.
  /// If false, the subnet cannot be modified through Google Cloud, only through NSX-T directly.
  late final pulumi.Output<bool> standardConfig;

  /// State of the subnet.
  late final pulumi.Output<String> state;

  /// The type of the subnet.
  late final pulumi.Output<String> type;

  /// System-generated unique identifier for the resource.
  late final pulumi.Output<String> uid;

  /// Last updated time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// VLAN ID of the VLAN on which the subnet is configured.
  late final pulumi.Output<int> vlanId;

  SubnetVmwareengine(
    String name, {
    SubnetVmwareengineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vmwareengine/subnet:Subnet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dhcpAddressRanges =
        registerOutput<List<SubnetDhcpAddressRange>>('dhcpAddressRanges');
    this.gatewayId = registerOutput<String>('gatewayId');
    this.gatewayIp = registerOutput<String>('gatewayIp');
    this.ipCidrRange = registerOutput<String>('ipCidrRange');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.standardConfig = registerOutput<bool>('standardConfig');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String>('type');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.vlanId = registerOutput<int>('vlanId');
  }
}
