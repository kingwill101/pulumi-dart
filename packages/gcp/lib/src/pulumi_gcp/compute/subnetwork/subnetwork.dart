import 'package:pulumi/pulumi.dart' as pulumi;
import '../subnetwork_log_config/subnetwork_log_config.dart';
import '../subnetwork_params/subnetwork_params.dart';
import '../subnetwork_secondary_ip_range/subnetwork_secondary_ip_range.dart';
import 'subnetwork_args.dart';

/// A VPC network is a virtual version of the traditional physical networks
/// that exist within and between physical data centers. A VPC network
/// provides connectivity for your Compute Engine virtual machine (VM)
/// instances, Container Engine containers, App Engine Flex services, and
/// other network-related resources.
///
/// Each GCP project contains one or more VPC networks. Each VPC network is a
/// global entity spanning all GCP regions. This global VPC network allows VM
/// instances and other resources to communicate with each other via internal,
/// private IP addresses.
///
/// Each VPC network is subdivided into subnets, and each subnet is contained
/// within a single region. You can have more than one subnet in a region for
/// a given VPC network. Each subnet has a contiguous private RFC1918 IP
/// space. You create instances, containers, and the like in these subnets.
/// When you create an instance, you must create it in a subnet, and the
/// instance draws its internal IP address from that subnet.
///
/// Virtual machine (VM) instances in a VPC network can communicate with
/// instances in all other subnets of the same VPC network, regardless of
/// region, using their RFC1918 private IP addresses. You can isolate portions
/// of the network, even entire subnets, using firewall rules.
///
///
/// To get more information about Subnetwork, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks)
/// * How-to Guides
/// * [Cloud Networking](https://cloud.google.com/vpc/docs/using-vpc)
/// * [Private Google Access](https://cloud.google.com/vpc/docs/configure-private-google-access)
///
/// ## Example Usage
///
/// ### Subnetwork Basic
///
///
///
/// ### Subnetwork Logging Config
///
///
///
/// ### Subnetwork Internal L7lb
///
///
///
/// ### Subnetwork Ipv6
///
///
///
/// ### Subnetwork Internal Ipv6
///
///
///
/// ### Subnetwork Purpose Private Nat
///
///
///
/// ### Subnetwork Resolve Subnet Mask
///
///
///
/// ### Subnetwork Cidr Overlap
///
///
///
/// ### Subnetwork Reserved Internal Range
///
///
///
/// ### Subnetwork Reserved Secondary Range
///
///
///
///
/// ## Import
///
/// Subnetwork can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/subnetworks/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Subnetwork can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/subnetwork:Subnetwork default projects/{{project}}/regions/{{region}}/subnetworks/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/subnetwork:Subnetwork default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/subnetwork:Subnetwork default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/subnetwork:Subnetwork default {{name}}
/// ```
class Subnetwork extends pulumi.CustomResource {
  /// Typically packets destined to IPs within the subnetwork range that do not match
  /// existing resources are dropped and prevented from leaving the VPC.
  /// Setting this field to true will allow these packets to match dynamic routes injected
  /// via BGP even if their destinations match existing subnet ranges.
  late final pulumi.Output<bool> allowSubnetCidrRoutesOverlap;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when
  /// you create the resource. This field can be set only at resource
  /// creation time.
  late final pulumi.Output<String?> description;

  /// The range of external IPv6 addresses that are owned by this subnetwork.
  late final pulumi.Output<String> externalIpv6Prefix;

  /// Fingerprint of this resource. This field is used internally during updates of this resource.
  late final pulumi.Output<String> fingerprint;

  /// The gateway address for default routes to reach destination addresses
  /// outside this subnetwork.
  late final pulumi.Output<String> gatewayAddress;

  /// The internal IPv6 address range that is assigned to this subnetwork.
  late final pulumi.Output<String> internalIpv6Prefix;

  /// The range of internal addresses that are owned by this subnetwork.
  /// Provide this property when you create the subnetwork. For example,
  /// 10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and
  /// non-overlapping within a network. Only IPv4 is supported.
  /// Field is optional when `reserved_internal_range` is defined, otherwise required.
  late final pulumi.Output<String> ipCidrRange;

  /// Resource reference of a PublicDelegatedPrefix. The PDP must be a sub-PDP
  /// in EXTERNAL_IPV6_SUBNETWORK_CREATION or INTERNAL_IPV6_SUBNETWORK_CREATION
  /// mode. Use one of the following formats to specify a sub-PDP when creating
  /// a dual stack or IPv6-only subnetwork using BYOIP:
  /// Full resource URL, as in:
  /// * `https://www.googleapis.com/compute/v1/projects/{{projectId}}/regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}`
  /// Partial URL, as in:
  /// * `projects/{{projectId}}/regions/region/publicDelegatedPrefixes/{{sub-pdp-name}}`
  /// * `regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}`
  late final pulumi.Output<String?> ipCollection;

  /// The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation
  /// or the first time the subnet is updated into IPV4_IPV6 dual stack. If the ipv6_type is EXTERNAL then this subnet
  /// cannot enable direct path.
  /// Possible values are: `EXTERNAL`, `INTERNAL`.
  late final pulumi.Output<String?> ipv6AccessType;

  /// The range of internal IPv6 addresses that are owned by this subnetwork.
  late final pulumi.Output<String> ipv6CidrRange;

  /// Possible endpoints of this subnetwork. It can be one of the following:
  /// * VM_ONLY: The subnetwork can be used for creating instances and IPv6 addresses with VM endpoint type. Such a subnetwork
  /// gets external IPv6 ranges from a public delegated prefix and cannot be used to create NetLb.
  /// * VM_AND_FR: The subnetwork can be used for creating both VM instances and Forwarding Rules. It can also be used to reserve
  /// IPv6 addresses with both VM and FR endpoint types. Such a subnetwork gets its IPv6 range from Google IP Pool directly.
  late final pulumi.Output<String> ipv6GceEndpoint;

  /// This field denotes the VPC flow logging options for this subnetwork. If
  /// logging is enabled, logs are exported to Cloud Logging. Flow logging
  /// isn't supported if the subnet `purpose` field is set to subnetwork is
  /// `REGIONAL_MANAGED_PROXY` or `GLOBAL_MANAGED_PROXY`.
  /// Structure is documented below.
  late final pulumi.Output<SubnetworkLogConfig?> logConfig;

  /// The name of the resource, provided by the client when initially
  /// creating the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which
  /// means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The network this subnet belongs to.
  /// Only networks that are in the distributed mode can have subnetworks.
  late final pulumi.Output<String> network;

  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final pulumi.Output<SubnetworkParams?> params;

  /// When enabled, VMs in this subnetwork without external IP addresses can
  /// access Google APIs and services by using Private Google Access.
  late final pulumi.Output<bool> privateIpGoogleAccess;

  /// The private IPv6 google access type for the VMs in this subnet.
  late final pulumi.Output<String> privateIpv6GoogleAccess;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The purpose of the resource. This field can be either `PRIVATE`, `REGIONAL_MANAGED_PROXY`, `GLOBAL_MANAGED_PROXY`, `PRIVATE_SERVICE_CONNECT`, `PEER_MIGRATION` or `PRIVATE_NAT`.
  /// A subnet with purpose set to `REGIONAL_MANAGED_PROXY` is a user-created subnetwork that is reserved for regional Envoy-based load balancers.
  /// A subnetwork in a given region with purpose set to `GLOBAL_MANAGED_PROXY` is a proxy-only subnet and is shared between all the cross-regional Envoy-based load balancers.
  /// A subnetwork with purpose set to `PRIVATE_SERVICE_CONNECT` reserves the subnet for hosting a Private Service Connect published service.
  /// A subnetwork with purpose set to `PEER_MIGRATION` is a user created subnetwork that is reserved for migrating resources from one peered network to another.
  /// A subnetwork with purpose set to `PRIVATE_NAT` is used as source range for Private NAT gateways.
  /// Note that `REGIONAL_MANAGED_PROXY` is the preferred setting for all regional Envoy load balancers.
  /// If unspecified, the purpose defaults to `PRIVATE`.
  late final pulumi.Output<String> purpose;

  /// The GCP region for this subnetwork.
  late final pulumi.Output<String> region;

  /// The ID of the reserved internal range. Must be prefixed with `networkconnectivity.googleapis.com`
  /// E.g. `networkconnectivity.googleapis.com/projects/{project}/locations/global/internalRanges/{rangeId}`
  late final pulumi.Output<String?> reservedInternalRange;

  /// 'Configures subnet mask resolution for this subnetwork.'
  /// Possible values are: `ARP_ALL_RANGES`, `ARP_PRIMARY_RANGE`.
  late final pulumi.Output<String?> resolveSubnetMask;

  /// The role of subnetwork.
  /// Currently, this field is only used when `purpose` is `REGIONAL_MANAGED_PROXY`.
  /// The value can be set to `ACTIVE` or `BACKUP`.
  /// An `ACTIVE` subnetwork is one that is currently being used for Envoy-based load balancers in a region.
  /// A `BACKUP` subnetwork is one that is ready to be promoted to `ACTIVE` or is currently draining.
  /// Possible values are: `ACTIVE`, `BACKUP`.
  late final pulumi.Output<String?> role;

  /// An array of configurations for secondary IP ranges for VM instances
  /// contained in this subnetwork. The primary IP of such VM must belong
  /// to the primary ipCidrRange of the subnetwork. The alias IPs may belong
  /// to either primary or secondary ranges.
  /// Structure is documented below.
  late final pulumi.Output<List<SubnetworkSecondaryIpRange>> secondaryIpRanges;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Controls the removal behavior of secondary_ip_range.
  /// When false, removing secondary_ip_range from config will not produce a diff as
  /// the provider will default to the API's value.
  /// When true, the provider will treat removing secondary_ip_range as sending an
  /// empty list of secondary IP ranges to the API.
  /// Defaults to false.
  late final pulumi.Output<bool?> sendSecondaryIpRangeIfEmpty;

  /// The stack type for this subnet to identify whether the IPv6 feature is enabled or not.
  /// If not specified IPV4_ONLY will be used.
  /// Possible values are: `IPV4_ONLY`, `IPV4_IPV6`, `IPV6_ONLY`.
  late final pulumi.Output<String> stackType;

  /// 'The state of the subnetwork, which can be one of the following values:
  /// READY: Subnetwork is created and ready to use DRAINING: only applicable to subnetworks that have the purpose
  /// set to INTERNAL_HTTPS_LOAD_BALANCER and indicates that connections to the load balancer are being drained.
  /// A subnetwork that is draining cannot be used or modified until it reaches a status of READY'
  late final pulumi.Output<String> state;

  /// The unique identifier number for the resource. This identifier is defined by the server.
  late final pulumi.Output<int> subnetworkId;

  Subnetwork(
    String name, {
    SubnetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/subnetwork:Subnetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowSubnetCidrRoutesOverlap =
        registerOutput<bool>('allowSubnetCidrRoutesOverlap');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.externalIpv6Prefix = registerOutput<String>('externalIpv6Prefix');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.gatewayAddress = registerOutput<String>('gatewayAddress');
    this.internalIpv6Prefix = registerOutput<String>('internalIpv6Prefix');
    this.ipCidrRange = registerOutput<String>('ipCidrRange');
    this.ipCollection = registerOutput<String?>('ipCollection');
    this.ipv6AccessType = registerOutput<String?>('ipv6AccessType');
    this.ipv6CidrRange = registerOutput<String>('ipv6CidrRange');
    this.ipv6GceEndpoint = registerOutput<String>('ipv6GceEndpoint');
    this.logConfig = registerOutput<SubnetworkLogConfig?>('logConfig');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.params = registerOutput<SubnetworkParams?>('params');
    this.privateIpGoogleAccess = registerOutput<bool>('privateIpGoogleAccess');
    this.privateIpv6GoogleAccess =
        registerOutput<String>('privateIpv6GoogleAccess');
    this.project = registerOutput<String>('project');
    this.purpose = registerOutput<String>('purpose');
    this.region = registerOutput<String>('region');
    this.reservedInternalRange =
        registerOutput<String?>('reservedInternalRange');
    this.resolveSubnetMask = registerOutput<String?>('resolveSubnetMask');
    this.role = registerOutput<String?>('role');
    this.secondaryIpRanges =
        registerOutput<List<SubnetworkSecondaryIpRange>>('secondaryIpRanges');
    this.selfLink = registerOutput<String>('selfLink');
    this.sendSecondaryIpRangeIfEmpty =
        registerOutput<bool?>('sendSecondaryIpRangeIfEmpty');
    this.stackType = registerOutput<String>('stackType');
    this.state = registerOutput<String>('state');
    this.subnetworkId = registerOutput<int>('subnetworkId');
  }
}
