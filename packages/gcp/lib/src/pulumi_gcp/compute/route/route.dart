import 'package:pulumi/pulumi.dart' as pulumi;
import '../route_as_path/route_as_path.dart';
import '../route_params/route_params.dart';
import '../route_warning/route_warning.dart';
import 'route_args.dart';

/// Represents a Route resource.
///
/// A route is a rule that specifies how certain packets should be handled by
/// the virtual network. Routes are associated with virtual machines by tag,
/// and the set of routes for a particular virtual machine is called its
/// routing table. For each packet leaving a virtual machine, the system
/// searches that virtual machine's routing table for a single best matching
/// route.
///
/// Routes match packets by destination IP address, preferring smaller or more
/// specific ranges over larger ones. If there is a tie, the system selects
/// the route with the smallest priority value. If there is still a tie, it
/// uses the layer three and four packet headers to select just one of the
/// remaining matching routes. The packet is then forwarded as specified by
/// the next_hop field of the winning route -- either to another virtual
/// machine destination, a virtual machine gateway or a Compute
/// Engine-operated gateway. Packets that do not match any route in the
/// sending virtual machine's routing table will be dropped.
///
/// A Route resource must have exactly one specification of either
/// nextHopGateway, nextHopInstance, nextHopIp, nextHopVpnTunnel, or
/// nextHopIlb.
///
///
/// To get more information about Route, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/routes)
/// * How-to Guides
/// * [Using Routes](https://cloud.google.com/vpc/docs/using-routes)
///
/// ## Example Usage
///
/// ### Route Basic
///
///
///
/// ### Route Ilb
///
///
///
/// ### Route Ilb Vip
///
///
///
///
/// ## Import
///
/// Route can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/routes/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Route can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/route:Route default projects/{{project}}/global/routes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/route:Route default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/route:Route default {{name}}
/// ```
class Route extends pulumi.CustomResource {
  /// Structure is documented below.
  late final pulumi.Output<List<RouteAsPath>> asPaths;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property
  /// when you create the resource.
  late final pulumi.Output<String?> description;

  /// The destination range of outgoing packets that this route applies to.
  /// Only IPv4 is supported.
  late final pulumi.Output<String> destRange;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The network that this route applies to.
  late final pulumi.Output<String> network;

  /// URL to a gateway that should handle matching packets.
  /// Currently, you can only specify the internet gateway, using a full or
  /// partial valid URL:
  /// * `https://www.googleapis.com/compute/v1/projects/project/global/gateways/default-internet-gateway`
  /// * `projects/project/global/gateways/default-internet-gateway`
  /// * `global/gateways/default-internet-gateway`
  /// * The string `default-internet-gateway`.
  late final pulumi.Output<String?> nextHopGateway;

  /// The hub network that should handle matching packets, which should conform to RFC1035.
  late final pulumi.Output<String> nextHopHub;

  /// The IP address or URL to a forwarding rule of type
  /// loadBalancingScheme=INTERNAL that should handle matching
  /// packets.
  /// With the GA provider you can only specify the forwarding
  /// rule as a partial or full URL. For example, the following
  /// are all valid values:
  /// * 10.128.0.56
  /// * https://www.googleapis.com/compute/v1/projects/project/regions/region/forwardingRules/forwardingRule
  /// * regions/region/forwardingRules/forwardingRule
  /// When the beta provider, you can also specify the IP address
  /// of a forwarding rule from the same VPC or any peered VPC.
  /// Note that this can only be used when the destinationRange is
  /// a public (non-RFC 1918) IP CIDR range.
  late final pulumi.Output<String?> nextHopIlb;

  /// URL to an instance that should handle matching packets.
  /// You can specify this as a full or partial URL. For example:
  /// * `https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/instance`
  /// * `projects/project/zones/zone/instances/instance`
  /// * `zones/zone/instances/instance`
  /// * Just the instance name, with the zone in `next_hop_instance_zone`.
  late final pulumi.Output<String?> nextHopInstance;

  /// (Optional when `next_hop_instance` is
  /// specified)  The zone of the instance specified in
  /// `next_hop_instance`.  Omit if `next_hop_instance` is specified as
  /// a URL.
  late final pulumi.Output<String> nextHopInstanceZone;

  /// Internal fixed region-to-region cost that Google Cloud calculates based on factors such as network performance, distance, and available bandwidth between regions.
  late final pulumi.Output<String> nextHopInterRegionCost;

  /// Network IP address of an instance that should handle matching packets.
  late final pulumi.Output<String> nextHopIp;

  /// Multi-Exit Discriminator, a BGP route metric that indicates the desirability of a particular route in a network.
  late final pulumi.Output<String> nextHopMed;

  /// URL to a Network that should handle matching packets.
  late final pulumi.Output<String> nextHopNetwork;

  /// Indicates the origin of the route. Can be IGP (Interior Gateway Protocol), EGP (Exterior Gateway Protocol), or INCOMPLETE.
  late final pulumi.Output<String> nextHopOrigin;

  /// The network peering name that should handle matching packets, which should conform to RFC1035.
  late final pulumi.Output<String> nextHopPeering;

  /// URL to a VpnTunnel that should handle matching packets.
  late final pulumi.Output<String?> nextHopVpnTunnel;

  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final pulumi.Output<RouteParams?> params;

  /// The priority of this route. Priority is used to break ties in cases
  /// where there is more than one matching route of equal prefix length.
  /// In the case of two routes with equal prefix length, the one with the
  /// lowest-numbered priority value wins.
  /// Default value is 1000. Valid range is 0 through 65535.
  late final pulumi.Output<int?> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The status of the route, which can be one of the following values:
  /// - 'ACTIVE' for an active route
  /// - 'INACTIVE' for an inactive route
  late final pulumi.Output<String> routeStatus;

  /// The type of this route, which can be one of the following values:
  /// - 'TRANSIT' for a transit route that this router learned from another Cloud Router and will readvertise to one of its BGP peers
  /// - 'SUBNET' for a route from a subnet of the VPC
  /// - 'BGP' for a route learned from a BGP peer of this router
  /// - 'STATIC' for a static route
  late final pulumi.Output<String> routeType;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// A list of instance tags to which this route applies.
  late final pulumi.Output<List<String>?> tags;

  /// If potential misconfigurations are detected for this route, this field will be populated with warning messages.
  /// Structure is documented below.
  late final pulumi.Output<List<RouteWarning>> warnings;

  Route(
    String name, {
    RouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/route:Route',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.asPaths = registerOutput<List<RouteAsPath>>('asPaths');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.destRange = registerOutput<String>('destRange');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.nextHopGateway = registerOutput<String?>('nextHopGateway');
    this.nextHopHub = registerOutput<String>('nextHopHub');
    this.nextHopIlb = registerOutput<String?>('nextHopIlb');
    this.nextHopInstance = registerOutput<String?>('nextHopInstance');
    this.nextHopInstanceZone = registerOutput<String>('nextHopInstanceZone');
    this.nextHopInterRegionCost =
        registerOutput<String>('nextHopInterRegionCost');
    this.nextHopIp = registerOutput<String>('nextHopIp');
    this.nextHopMed = registerOutput<String>('nextHopMed');
    this.nextHopNetwork = registerOutput<String>('nextHopNetwork');
    this.nextHopOrigin = registerOutput<String>('nextHopOrigin');
    this.nextHopPeering = registerOutput<String>('nextHopPeering');
    this.nextHopVpnTunnel = registerOutput<String?>('nextHopVpnTunnel');
    this.params = registerOutput<RouteParams?>('params');
    this.priority = registerOutput<int?>('priority');
    this.project = registerOutput<String>('project');
    this.routeStatus = registerOutput<String>('routeStatus');
    this.routeType = registerOutput<String>('routeType');
    this.selfLink = registerOutput<String>('selfLink');
    this.tags = registerOutput<List<String>?>('tags');
    this.warnings = registerOutput<List<RouteWarning>>('warnings');
  }
}
