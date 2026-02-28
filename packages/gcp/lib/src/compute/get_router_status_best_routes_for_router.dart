// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_router_status_best_routes_for_router_as_path.dart';
import 'get_router_status_best_routes_for_router_param.dart';
import 'get_router_status_best_routes_for_router_warning.dart';

class GetRouterStatusBestRoutesForRouter {
  final List<GetRouterStatusBestRoutesForRouterAsPath> asPaths;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// An optional description of this resource. Provide this property
  /// when you create the resource.
  final String description;

  /// The destination range of outgoing packets that this route applies to.
  /// Only IPv4 is supported.
  final String destRange;

  /// The name of the router.
  final String name;

  /// The network name or resource link to the parent
  /// network of this subnetwork.
  final String network;

  /// URL to a gateway that should handle matching packets.
  /// Currently, you can only specify the internet gateway, using a full or
  /// partial valid URL:
  /// * 'https://www.googleapis.com/compute/v1/projects/project/global/gateways/default-internet-gateway'
  /// * 'projects/project/global/gateways/default-internet-gateway'
  /// * 'global/gateways/default-internet-gateway'
  /// * The string 'default-internet-gateway'.
  final String nextHopGateway;

  /// The hub network that should handle matching packets, which should conform to RFC1035.
  final String nextHopHub;

  /// The IP address or URL to a forwarding rule of type
  /// loadBalancingScheme=INTERNAL that should handle matching
  /// packets.
  ///
  /// With the GA provider you can only specify the forwarding
  /// rule as a partial or full URL. For example, the following
  /// are all valid values:
  /// * 10.128.0.56
  /// * https://www.googleapis.com/compute/v1/projects/project/regions/region/forwardingRules/forwardingRule
  /// * regions/region/forwardingRules/forwardingRule
  ///
  /// When the beta provider, you can also specify the IP address
  /// of a forwarding rule from the same VPC or any peered VPC.
  ///
  /// Note that this can only be used when the destinationRange is
  /// a public (non-RFC 1918) IP CIDR range.
  final String nextHopIlb;

  /// URL to an instance that should handle matching packets.
  /// You can specify this as a full or partial URL. For example:
  /// * 'https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/instance'
  /// * 'projects/project/zones/zone/instances/instance'
  /// * 'zones/zone/instances/instance'
  /// * Just the instance name, with the zone in 'next_hop_instance_zone'.
  final String nextHopInstance;

  /// The zone of the instance specified in next_hop_instance. Omit if next_hop_instance is specified as a URL.
  final String nextHopInstanceZone;

  /// Internal fixed region-to-region cost that Google Cloud calculates based on factors such as network performance, distance, and available bandwidth between regions.
  final String nextHopInterRegionCost;

  /// Network IP address of an instance that should handle matching packets.
  final String nextHopIp;

  /// Multi-Exit Discriminator, a BGP route metric that indicates the desirability of a particular route in a network.
  final String nextHopMed;

  /// URL to a Network that should handle matching packets.
  final String nextHopNetwork;

  /// Indicates the origin of the route. Can be IGP (Interior Gateway Protocol), EGP (Exterior Gateway Protocol), or INCOMPLETE.
  final String nextHopOrigin;

  /// The network peering name that should handle matching packets, which should conform to RFC1035.
  final String nextHopPeering;

  /// URL to a VpnTunnel that should handle matching packets.
  final String nextHopVpnTunnel;

  /// Additional params passed with the request, but not persisted as part of resource payload
  final List<GetRouterStatusBestRoutesForRouterParam> params;

  /// The priority of this route. Priority is used to break ties in cases
  /// where there is more than one matching route of equal prefix length.
  ///
  /// In the case of two routes with equal prefix length, the one with the
  /// lowest-numbered priority value wins.
  ///
  /// Default value is 1000. Valid range is 0 through 65535.
  final int priority;

  /// The ID of the project in which the resource
  /// belongs. If it is not provided, the provider project is used.
  final String project;

  /// The status of the route, which can be one of the following values:
  /// - 'ACTIVE' for an active route
  /// - 'INACTIVE' for an inactive route
  final String routeStatus;

  /// The type of this route, which can be one of the following values:
  /// - 'TRANSIT' for a transit route that this router learned from another Cloud Router and will readvertise to one of its BGP peers
  /// - 'SUBNET' for a route from a subnet of the VPC
  /// - 'BGP' for a route learned from a BGP peer of this router
  /// - 'STATIC' for a static route
  final String routeType;
  final String selfLink;

  /// A list of instance tags to which this route applies.
  final List<String> tags;

  /// If potential misconfigurations are detected for this route, this field will be populated with warning messages.
  final List<GetRouterStatusBestRoutesForRouterWarning> warnings;

  /// Creates a new [GetRouterStatusBestRoutesForRouter].
  /// [asPaths] Required.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property
  /// [destRange] The destination range of outgoing packets that this route applies to.
  /// [name] The name of the router.
  /// [network] The network name or resource link to the parent
  /// [nextHopGateway] URL to a gateway that should handle matching packets.
  /// [nextHopHub] The hub network that should handle matching packets, which should conform to RFC1035.
  /// [nextHopIlb] The IP address or URL to a forwarding rule of type
  /// [nextHopInstance] URL to an instance that should handle matching packets.
  /// [nextHopInstanceZone] The zone of the instance specified in next_hop_instance. Omit if next_hop_instance is specified as a URL.
  /// [nextHopInterRegionCost] Internal fixed region-to-region cost that Google Cloud calculates based on factors such as network performance, distance, and available bandwidth between regions.
  /// [nextHopIp] Network IP address of an instance that should handle matching packets.
  /// [nextHopMed] Multi-Exit Discriminator, a BGP route metric that indicates the desirability of a particular route in a network.
  /// [nextHopNetwork] URL to a Network that should handle matching packets.
  /// [nextHopOrigin] Indicates the origin of the route. Can be IGP (Interior Gateway Protocol), EGP (Exterior Gateway Protocol), or INCOMPLETE.
  /// [nextHopPeering] The network peering name that should handle matching packets, which should conform to RFC1035.
  /// [nextHopVpnTunnel] URL to a VpnTunnel that should handle matching packets.
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [priority] The priority of this route. Priority is used to break ties in cases
  /// [project] The ID of the project in which the resource
  /// [routeStatus] The status of the route, which can be one of the following values:
  /// [routeType] The type of this route, which can be one of the following values:
  /// [selfLink] Required.
  /// [tags] A list of instance tags to which this route applies.
  /// [warnings] If potential misconfigurations are detected for this route, this field will be populated with warning messages.
  GetRouterStatusBestRoutesForRouter({
    required this.asPaths,
    required this.creationTimestamp,
    required this.description,
    required this.destRange,
    required this.name,
    required this.network,
    required this.nextHopGateway,
    required this.nextHopHub,
    required this.nextHopIlb,
    required this.nextHopInstance,
    required this.nextHopInstanceZone,
    required this.nextHopInterRegionCost,
    required this.nextHopIp,
    required this.nextHopMed,
    required this.nextHopNetwork,
    required this.nextHopOrigin,
    required this.nextHopPeering,
    required this.nextHopVpnTunnel,
    required this.params,
    required this.priority,
    required this.project,
    required this.routeStatus,
    required this.routeType,
    required this.selfLink,
    required this.tags,
    required this.warnings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['asPaths'] = pulumi.Input.encodeList<
        GetRouterStatusBestRoutesForRouterAsPath,
        Map<String, dynamic>>(asPaths, (value) => value.toMap());
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['destRange'] = destRange;
    map['name'] = name;
    map['network'] = network;
    map['nextHopGateway'] = nextHopGateway;
    map['nextHopHub'] = nextHopHub;
    map['nextHopIlb'] = nextHopIlb;
    map['nextHopInstance'] = nextHopInstance;
    map['nextHopInstanceZone'] = nextHopInstanceZone;
    map['nextHopInterRegionCost'] = nextHopInterRegionCost;
    map['nextHopIp'] = nextHopIp;
    map['nextHopMed'] = nextHopMed;
    map['nextHopNetwork'] = nextHopNetwork;
    map['nextHopOrigin'] = nextHopOrigin;
    map['nextHopPeering'] = nextHopPeering;
    map['nextHopVpnTunnel'] = nextHopVpnTunnel;
    map['params'] = pulumi.Input.encodeList<
        GetRouterStatusBestRoutesForRouterParam,
        Map<String, dynamic>>(params, (value) => value.toMap());
    map['priority'] = priority;
    map['project'] = project;
    map['routeStatus'] = routeStatus;
    map['routeType'] = routeType;
    map['selfLink'] = selfLink;
    map['tags'] = tags;
    map['warnings'] = pulumi.Input.encodeList<
        GetRouterStatusBestRoutesForRouterWarning,
        Map<String, dynamic>>(warnings, (value) => value.toMap());
    return map;
  }

  factory GetRouterStatusBestRoutesForRouter.fromMap(Map<String, dynamic> map) {
    return GetRouterStatusBestRoutesForRouter(
      asPaths:
          pulumi.Input.decodeList<GetRouterStatusBestRoutesForRouterAsPath>(
              map['asPaths'],
              (value) => GetRouterStatusBestRoutesForRouterAsPath.fromMap(
                  (value as Map).cast<String, dynamic>())),
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      destRange: map['destRange'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      nextHopGateway: map['nextHopGateway'] as String,
      nextHopHub: map['nextHopHub'] as String,
      nextHopIlb: map['nextHopIlb'] as String,
      nextHopInstance: map['nextHopInstance'] as String,
      nextHopInstanceZone: map['nextHopInstanceZone'] as String,
      nextHopInterRegionCost: map['nextHopInterRegionCost'] as String,
      nextHopIp: map['nextHopIp'] as String,
      nextHopMed: map['nextHopMed'] as String,
      nextHopNetwork: map['nextHopNetwork'] as String,
      nextHopOrigin: map['nextHopOrigin'] as String,
      nextHopPeering: map['nextHopPeering'] as String,
      nextHopVpnTunnel: map['nextHopVpnTunnel'] as String,
      params: pulumi.Input.decodeList<GetRouterStatusBestRoutesForRouterParam>(
          map['params'],
          (value) => GetRouterStatusBestRoutesForRouterParam.fromMap(
              (value as Map).cast<String, dynamic>())),
      priority: map['priority'] as int,
      project: map['project'] as String,
      routeStatus: map['routeStatus'] as String,
      routeType: map['routeType'] as String,
      selfLink: map['selfLink'] as String,
      tags: (map['tags'] as List).cast<String>(),
      warnings:
          pulumi.Input.decodeList<GetRouterStatusBestRoutesForRouterWarning>(
              map['warnings'],
              (value) => GetRouterStatusBestRoutesForRouterWarning.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
