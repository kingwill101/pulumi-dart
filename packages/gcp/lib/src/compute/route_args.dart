// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_params.dart';

/// {@template pulumi_compute_route_route_args_doc}
/// The set of arguments for Route.
/// {@endtemplate}
/// {@macro pulumi_compute_route_route_args_doc}
class RouteArgs {
  /// An optional description of this resource. Provide this property
  /// when you create the resource.
  final pulumi.Input<String>? description;

  /// The destination range of outgoing packets that this route applies to.
  /// Only IPv4 is supported.
  final pulumi.Input<String> destRange;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The network that this route applies to.
  final pulumi.Input<String> network;

  /// URL to a gateway that should handle matching packets.
  /// Currently, you can only specify the internet gateway, using a full or
  /// partial valid URL:
  /// * `https://www.googleapis.com/compute/v1/projects/project/global/gateways/default-internet-gateway`
  /// * `projects/project/global/gateways/default-internet-gateway`
  /// * `global/gateways/default-internet-gateway`
  /// * The string `default-internet-gateway`.
  final pulumi.Input<String>? nextHopGateway;

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
  final pulumi.Input<String>? nextHopIlb;

  /// URL to an instance that should handle matching packets.
  /// You can specify this as a full or partial URL. For example:
  /// * `https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/instance`
  /// * `projects/project/zones/zone/instances/instance`
  /// * `zones/zone/instances/instance`
  /// * Just the instance name, with the zone in `next_hop_instance_zone`.
  final pulumi.Input<String>? nextHopInstance;

  /// (Optional when `next_hop_instance` is
  /// specified)  The zone of the instance specified in
  /// `next_hop_instance`.  Omit if `next_hop_instance` is specified as
  /// a URL.
  final pulumi.Input<String>? nextHopInstanceZone;

  /// Network IP address of an instance that should handle matching packets.
  final pulumi.Input<String>? nextHopIp;

  /// URL to a VpnTunnel that should handle matching packets.
  final pulumi.Input<String>? nextHopVpnTunnel;

  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<RouteParams>? params;

  /// The priority of this route. Priority is used to break ties in cases
  /// where there is more than one matching route of equal prefix length.
  /// In the case of two routes with equal prefix length, the one with the
  /// lowest-numbered priority value wins.
  /// Default value is 1000. Valid range is 0 through 65535.
  final pulumi.Input<int>? priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A list of instance tags to which this route applies.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [RouteArgs].
  /// [description] An optional description of this resource. Provide this property
  /// [destRange] The destination range of outgoing packets that this route applies to.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [network] The network that this route applies to.
  /// [nextHopGateway] URL to a gateway that should handle matching packets.
  /// [nextHopIlb] The IP address or URL to a forwarding rule of type
  /// [nextHopInstance] URL to an instance that should handle matching packets.
  /// [nextHopInstanceZone] (Optional when `next_hop_instance` is
  /// [nextHopIp] Network IP address of an instance that should handle matching packets.
  /// [nextHopVpnTunnel] URL to a VpnTunnel that should handle matching packets.
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [priority] The priority of this route. Priority is used to break ties in cases
  /// [project] The ID of the project in which the resource belongs.
  /// [tags] A list of instance tags to which this route applies.
  RouteArgs({
    String? description,
    required String destRange,
    String? name,
    required String network,
    String? nextHopGateway,
    String? nextHopIlb,
    String? nextHopInstance,
    String? nextHopInstanceZone,
    String? nextHopIp,
    String? nextHopVpnTunnel,
    RouteParams? params,
    int? priority,
    String? project,
    List<String>? tags,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       destRange = pulumi.Input.asInput<String>(destRange),
       name = pulumi.Input.asOptionalInput<String>(name),
       network = pulumi.Input.asInput<String>(network),
       nextHopGateway = pulumi.Input.asOptionalInput<String>(nextHopGateway),
       nextHopIlb = pulumi.Input.asOptionalInput<String>(nextHopIlb),
       nextHopInstance = pulumi.Input.asOptionalInput<String>(nextHopInstance),
       nextHopInstanceZone = pulumi.Input.asOptionalInput<String>(
         nextHopInstanceZone,
       ),
       nextHopIp = pulumi.Input.asOptionalInput<String>(nextHopIp),
       nextHopVpnTunnel = pulumi.Input.asOptionalInput<String>(
         nextHopVpnTunnel,
       ),
       params = pulumi.Input.asOptionalInput<RouteParams>(params),
       priority = pulumi.Input.asOptionalInput<int>(priority),
       project = pulumi.Input.asOptionalInput<String>(project),
       tags = pulumi.Input.asOptionalInput<List<String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destRange': destRange,
      'name': ?name,
      'network': network,
      'nextHopGateway': ?nextHopGateway,
      'nextHopIlb': ?nextHopIlb,
      'nextHopInstance': ?nextHopInstance,
      'nextHopInstanceZone': ?nextHopInstanceZone,
      'nextHopIp': ?nextHopIp,
      'nextHopVpnTunnel': ?nextHopVpnTunnel,
      'params':
          ?pulumi.Input.mapOptionalInputValue<
            RouteParams,
            Map<String, dynamic>
          >(params, (value) => value.toMap()),
      'priority': ?priority,
      'project': ?project,
      'tags': ?tags,
    };
  }

  factory RouteArgs.fromMap(Map<String, dynamic> map) {
    return RouteArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      destRange: map['destRange'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] as String,
      nextHopGateway: map['nextHopGateway'] == null
          ? null
          : map['nextHopGateway'] as String,
      nextHopIlb: map['nextHopIlb'] == null
          ? null
          : map['nextHopIlb'] as String,
      nextHopInstance: map['nextHopInstance'] == null
          ? null
          : map['nextHopInstance'] as String,
      nextHopInstanceZone: map['nextHopInstanceZone'] == null
          ? null
          : map['nextHopInstanceZone'] as String,
      nextHopIp: map['nextHopIp'] == null ? null : map['nextHopIp'] as String,
      nextHopVpnTunnel: map['nextHopVpnTunnel'] == null
          ? null
          : map['nextHopVpnTunnel'] as String,
      params: map['params'] == null
          ? null
          : RouteParams.fromMap((map['params'] as Map).cast<String, dynamic>()),
      priority: map['priority'] == null ? null : map['priority'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}
