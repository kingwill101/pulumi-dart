// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../route_params/route_params.dart';

/// The set of arguments for Route.
class RouteArgs {
  /// An optional description of this resource. Provide this property
  /// when you create the resource.
  final Input<String>? description;

  /// The destination range of outgoing packets that this route applies to.
  /// Only IPv4 is supported.
  final Input<String> destRange;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  final Input<String>? name;

  /// The network that this route applies to.
  final Input<String> network;

  /// URL to a gateway that should handle matching packets.
  /// Currently, you can only specify the internet gateway, using a full or
  /// partial valid URL:
  /// * `https://www.googleapis.com/compute/v1/projects/project/global/gateways/default-internet-gateway`
  /// * `projects/project/global/gateways/default-internet-gateway`
  /// * `global/gateways/default-internet-gateway`
  /// * The string `default-internet-gateway`.
  final Input<String>? nextHopGateway;

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
  final Input<String>? nextHopIlb;

  /// URL to an instance that should handle matching packets.
  /// You can specify this as a full or partial URL. For example:
  /// * `https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/instance`
  /// * `projects/project/zones/zone/instances/instance`
  /// * `zones/zone/instances/instance`
  /// * Just the instance name, with the zone in <span pulumi-lang-nodejs="`nextHopInstanceZone`" pulumi-lang-dotnet="`NextHopInstanceZone`" pulumi-lang-go="`nextHopInstanceZone`" pulumi-lang-python="`next_hop_instance_zone`" pulumi-lang-yaml="`nextHopInstanceZone`" pulumi-lang-java="`nextHopInstanceZone`">`next_hop_instance_zone`</span>.
  final Input<String>? nextHopInstance;

  /// (Optional when <span pulumi-lang-nodejs="`nextHopInstance`" pulumi-lang-dotnet="`NextHopInstance`" pulumi-lang-go="`nextHopInstance`" pulumi-lang-python="`next_hop_instance`" pulumi-lang-yaml="`nextHopInstance`" pulumi-lang-java="`nextHopInstance`">`next_hop_instance`</span> is
  /// specified)  The zone of the instance specified in
  /// <span pulumi-lang-nodejs="`nextHopInstance`" pulumi-lang-dotnet="`NextHopInstance`" pulumi-lang-go="`nextHopInstance`" pulumi-lang-python="`next_hop_instance`" pulumi-lang-yaml="`nextHopInstance`" pulumi-lang-java="`nextHopInstance`">`next_hop_instance`</span>.  Omit if <span pulumi-lang-nodejs="`nextHopInstance`" pulumi-lang-dotnet="`NextHopInstance`" pulumi-lang-go="`nextHopInstance`" pulumi-lang-python="`next_hop_instance`" pulumi-lang-yaml="`nextHopInstance`" pulumi-lang-java="`nextHopInstance`">`next_hop_instance`</span> is specified as
  /// a URL.
  final Input<String>? nextHopInstanceZone;

  /// Network IP address of an instance that should handle matching packets.
  final Input<String>? nextHopIp;

  /// URL to a VpnTunnel that should handle matching packets.
  final Input<String>? nextHopVpnTunnel;

  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final Input<RouteParams>? params;

  /// The priority of this route. Priority is used to break ties in cases
  /// where there is more than one matching route of equal prefix length.
  /// In the case of two routes with equal prefix length, the one with the
  /// lowest-numbered priority value wins.
  /// Default value is 1000. Valid range is 0 through 65535.
  final Input<int>? priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// A list of instance tags to which this route applies.
  final Input<List<String>>? tags;

  RouteArgs({
    this.description,
    required this.destRange,
    this.name,
    required this.network,
    this.nextHopGateway,
    this.nextHopIlb,
    this.nextHopInstance,
    this.nextHopInstanceZone,
    this.nextHopIp,
    this.nextHopVpnTunnel,
    this.params,
    this.priority,
    this.project,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['destRange'] = destRange;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['network'] = network;
    final nextHopGatewayValue = nextHopGateway;
    if (nextHopGatewayValue != null) {
      map['nextHopGateway'] = nextHopGatewayValue;
    }
    final nextHopIlbValue = nextHopIlb;
    if (nextHopIlbValue != null) {
      map['nextHopIlb'] = nextHopIlbValue;
    }
    final nextHopInstanceValue = nextHopInstance;
    if (nextHopInstanceValue != null) {
      map['nextHopInstance'] = nextHopInstanceValue;
    }
    final nextHopInstanceZoneValue = nextHopInstanceZone;
    if (nextHopInstanceZoneValue != null) {
      map['nextHopInstanceZone'] = nextHopInstanceZoneValue;
    }
    final nextHopIpValue = nextHopIp;
    if (nextHopIpValue != null) {
      map['nextHopIp'] = nextHopIpValue;
    }
    final nextHopVpnTunnelValue = nextHopVpnTunnel;
    if (nextHopVpnTunnelValue != null) {
      map['nextHopVpnTunnel'] = nextHopVpnTunnelValue;
    }
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] =
          Input.mapOptionalInputValue<RouteParams, Map<String, dynamic>>(
              paramsValue, (value) => value.toMap());
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RouteArgs.fromMap(Map<String, dynamic> map) {
    return RouteArgs(
      description: Input.asOptionalInput<String>(map['description']),
      destRange: Input.asInput<String>(map['destRange']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asInput<String>(map['network']),
      nextHopGateway: Input.asOptionalInput<String>(map['nextHopGateway']),
      nextHopIlb: Input.asOptionalInput<String>(map['nextHopIlb']),
      nextHopInstance: Input.asOptionalInput<String>(map['nextHopInstance']),
      nextHopInstanceZone:
          Input.asOptionalInput<String>(map['nextHopInstanceZone']),
      nextHopIp: Input.asOptionalInput<String>(map['nextHopIp']),
      nextHopVpnTunnel: Input.asOptionalInput<String>(map['nextHopVpnTunnel']),
      params: Input.asOptionalInput<RouteParams>(map['params']),
      priority: Input.asOptionalInput<int>(map['priority']),
      project: Input.asOptionalInput<String>(map['project']),
      tags: Input.asOptionalInput<List<String>>(map['tags']),
    );
  }
}
