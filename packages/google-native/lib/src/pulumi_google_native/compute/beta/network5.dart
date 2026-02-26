import 'package:pulumi/pulumi.dart';
import 'network_args2.dart';
import 'network_peering_response2.dart';
import 'network_routing_config_response2.dart';

/// Creates a network in the specified project using the data included in the request.
class Network5 extends CustomResource {
  /// Must be set to create a VPC network. If not set, a legacy network is created. When set to true, the VPC network is created in auto mode. When set to false, the VPC network is created in custom mode. An auto mode VPC network starts with one subnet per region. Each subnet has a predetermined range as described in Auto mode VPC network IP ranges. For custom mode VPC networks, you can add subnets using the subnetworks insert method.
  late final Output<bool> autoCreateSubnetworks;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this field when you create the resource.
  late final Output<String> description;

  /// Enable ULA internal ipv6 on this network. Enabling this feature will assign a /48 from google defined ULA prefix fd20::/20. .
  late final Output<bool> enableUlaInternalIpv6;

  /// URL of the firewall policy the network is associated with.
  late final Output<String> firewallPolicy;

  /// The gateway address for default routing out of the network, selected by Google Cloud.
  late final Output<String> gatewayIPv4;

  /// When enabling ula internal ipv6, caller optionally can specify the /48 range they want from the google defined ULA prefix fd20::/20. The input must be a valid /48 ULA IPv6 address and must be within the fd20::/20. Operation will fail if the speficied /48 is already in used by another resource. If the field is not speficied, then a /48 range will be randomly allocated from fd20::/20 and returned via this field. .
  late final Output<String> internalIpv6Range;

  /// Deprecated in favor of subnet mode networks. The range of internal addresses that are legal on this network. This range is a CIDR specification, for example: 192.168.0.0/16. Provided by the client when the network is created.
  late final Output<String> ipv4Range;

  /// Type of the resource. Always compute#network for networks.
  late final Output<String> kind;

  /// Maximum Transmission Unit in bytes. The minimum value for this field is 1300 and the maximum value is 8896. The suggested value is 1500, which is the default MTU used on the Internet, or 8896 if you want to use Jumbo frames. If unspecified, the value defaults to 1460.
  late final Output<int> mtu;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  late final Output<String> name;

  /// The network firewall policy enforcement order. Can be either AFTER_CLASSIC_FIREWALL or BEFORE_CLASSIC_FIREWALL. Defaults to AFTER_CLASSIC_FIREWALL if the field is not specified.
  late final Output<String> networkFirewallPolicyEnforcementOrder;

  /// A list of network peerings for the resource.
  late final Output<List<NetworkPeeringResponse2>> peerings;
  late final Output<String> project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// The network-level routing configuration for this network. Used by Cloud Router to determine what type of network-wide routing behavior to enforce.
  late final Output<NetworkRoutingConfigResponse2> routingConfig;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final Output<String> selfLinkWithId;

  /// Server-defined fully-qualified URLs for all subnetworks in this VPC network.
  late final Output<List<String>> subnetworks;

  Network5(
    String name, {
    NetworkArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/beta:Network',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoCreateSubnetworks = Output.createUnknown<bool>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.enableUlaInternalIpv6 = Output.createUnknown<bool>();
    this.firewallPolicy = Output.createUnknown<String>();
    this.gatewayIPv4 = Output.createUnknown<String>();
    this.internalIpv6Range = Output.createUnknown<String>();
    this.ipv4Range = Output.createUnknown<String>();
    this.kind = Output.createUnknown<String>();
    this.mtu = Output.createUnknown<int>();
    this.name = Output.createUnknown<String>();
    this.networkFirewallPolicyEnforcementOrder = Output.createUnknown<String>();
    this.peerings = Output.createUnknown<List<NetworkPeeringResponse2>>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.routingConfig = Output.createUnknown<NetworkRoutingConfigResponse2>();
    this.selfLink = Output.createUnknown<String>();
    this.selfLinkWithId = Output.createUnknown<String>();
    this.subnetworks = Output.createUnknown<List<String>>();
  }
}
