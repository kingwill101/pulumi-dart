// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Route.
class RouteArgs3 {
  /// An optional description of this resource. Provide this field when you create the resource.
  final Input<String>? description;

  /// The destination range of outgoing packets that this route applies to. Both IPv4 and IPv6 are supported. Must specify an IPv4 range (e.g. 192.0.2.0/24) or an IPv6 range in RFC 4291 format (e.g. 2001:db8::/32). IPv6 range will be displayed using RFC 5952 compressed format.
  final Input<String>? destRange;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  final Input<String>? name;

  /// Fully-qualified URL of the network that this route applies to.
  final Input<String>? network;

  /// The URL to a gateway that should handle matching packets. You can only specify the internet gateway using a full or partial valid URL: projects/ project/global/gateways/default-internet-gateway
  final Input<String>? nextHopGateway;

  /// The URL to a forwarding rule of type loadBalancingScheme=INTERNAL that should handle matching packets or the IP address of the forwarding Rule. For example, the following are all valid URLs: - 10.128.0.56 - https://www.googleapis.com/compute/v1/projects/project/regions/region /forwardingRules/forwardingRule - regions/region/forwardingRules/forwardingRule
  final Input<String>? nextHopIlb;

  /// The URL to an instance that should handle matching packets. You can specify this as a full or partial URL. For example: https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/
  final Input<String>? nextHopInstance;

  /// The network IP address of an instance that should handle matching packets. Both IPv6 address and IPv4 addresses are supported. Must specify an IPv4 address in dot-decimal notation (e.g. 192.0.2.99) or an IPv6 address in RFC 4291 format (e.g. 2001:db8::2d9:51:0:0 or 2001:db8:0:0:2d9:51:0:0). IPv6 addresses will be displayed using RFC 5952 compressed format (e.g. 2001:db8::2d9:51:0:0). Should never be an IPv4-mapped IPv6 address.
  final Input<String>? nextHopIp;

  /// The URL of the local network if it should handle matching packets.
  final Input<String>? nextHopNetwork;

  /// The URL to a VpnTunnel that should handle matching packets.
  final Input<String>? nextHopVpnTunnel;

  /// The priority of this route. Priority is used to break ties in cases where there is more than one matching route of equal prefix length. In cases where multiple routes have equal prefix length, the one with the lowest-numbered priority value wins. The default value is `1000`. The priority value must be from `0` to `65535`, inclusive.
  final Input<int>? priority;
  final Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// A list of instance tags to which this route applies.
  final Input<List<String>>? tags;

  RouteArgs3({
    this.description,
    this.destRange,
    this.name,
    this.network,
    this.nextHopGateway,
    this.nextHopIlb,
    this.nextHopInstance,
    this.nextHopIp,
    this.nextHopNetwork,
    this.nextHopVpnTunnel,
    this.priority,
    this.project,
    this.requestId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final destRangeValue = destRange;
    if (destRangeValue != null) {
      map['destRange'] = destRangeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
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
    final nextHopIpValue = nextHopIp;
    if (nextHopIpValue != null) {
      map['nextHopIp'] = nextHopIpValue;
    }
    final nextHopNetworkValue = nextHopNetwork;
    if (nextHopNetworkValue != null) {
      map['nextHopNetwork'] = nextHopNetworkValue;
    }
    final nextHopVpnTunnelValue = nextHopVpnTunnel;
    if (nextHopVpnTunnelValue != null) {
      map['nextHopVpnTunnel'] = nextHopVpnTunnelValue;
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RouteArgs3.fromMap(Map<String, dynamic> map) {
    return RouteArgs3(
      description: Input.asOptionalInput<String>(map['description']),
      destRange: Input.asOptionalInput<String>(map['destRange']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asOptionalInput<String>(map['network']),
      nextHopGateway: Input.asOptionalInput<String>(map['nextHopGateway']),
      nextHopIlb: Input.asOptionalInput<String>(map['nextHopIlb']),
      nextHopInstance: Input.asOptionalInput<String>(map['nextHopInstance']),
      nextHopIp: Input.asOptionalInput<String>(map['nextHopIp']),
      nextHopNetwork: Input.asOptionalInput<String>(map['nextHopNetwork']),
      nextHopVpnTunnel: Input.asOptionalInput<String>(map['nextHopVpnTunnel']),
      priority: Input.asOptionalInput<int>(map['priority']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      tags: Input.asOptionalInput<List<String>>(map['tags']),
    );
  }
}
