// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_network_firewall_policy_enforcement_order_compute_v1.dart';
import 'network_routing_config_compute_v1.dart';

/// {@template pulumi_compute_v1_network_compute_v1_args_doc}
/// The set of arguments for Network.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_network_compute_v1_args_doc}
class NetworkComputeV1Args {
  /// Must be set to create a VPC network. If not set, a legacy network is created. When set to true, the VPC network is created in auto mode. When set to false, the VPC network is created in custom mode. An auto mode VPC network starts with one subnet per region. Each subnet has a predetermined range as described in Auto mode VPC network IP ranges. For custom mode VPC networks, you can add subnets using the subnetworks insert method.
  final pulumi.Input<bool>? autoCreateSubnetworks;

  /// An optional description of this resource. Provide this field when you create the resource.
  final pulumi.Input<String>? description;

  /// Enable ULA internal ipv6 on this network. Enabling this feature will assign a /48 from google defined ULA prefix fd20::/20. .
  final pulumi.Input<bool>? enableUlaInternalIpv6;

  /// When enabling ula internal ipv6, caller optionally can specify the /48 range they want from the google defined ULA prefix fd20::/20. The input must be a valid /48 ULA IPv6 address and must be within the fd20::/20. Operation will fail if the speficied /48 is already in used by another resource. If the field is not speficied, then a /48 range will be randomly allocated from fd20::/20 and returned via this field. .
  final pulumi.Input<String>? internalIpv6Range;

  /// Deprecated in favor of subnet mode networks. The range of internal addresses that are legal on this network. This range is a CIDR specification, for example: 192.168.0.0/16. Provided by the client when the network is created.
  final pulumi.Input<String>? ipv4Range;

  /// Maximum Transmission Unit in bytes. The minimum value for this field is 1300 and the maximum value is 8896. The suggested value is 1500, which is the default MTU used on the Internet, or 8896 if you want to use Jumbo frames. If unspecified, the value defaults to 1460.
  final pulumi.Input<int>? mtu;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  final pulumi.Input<String>? name;

  /// The network firewall policy enforcement order. Can be either AFTER_CLASSIC_FIREWALL or BEFORE_CLASSIC_FIREWALL. Defaults to AFTER_CLASSIC_FIREWALL if the field is not specified.
  final pulumi.Input<NetworkNetworkFirewallPolicyEnforcementOrderComputeV1>?
  networkFirewallPolicyEnforcementOrder;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// The network-level routing configuration for this network. Used by Cloud Router to determine what type of network-wide routing behavior to enforce.
  final pulumi.Input<NetworkRoutingConfigComputeV1>? routingConfig;

  /// Creates a new [NetworkComputeV1Args].
  /// [autoCreateSubnetworks] Must be set to create a VPC network. If not set, a legacy network is created. When set to true, the VPC network is created in auto mode. When set to false, the VPC network is created in custom mode. An auto mode VPC network starts with one subnet per region. Each subnet has a predetermined range as described in Auto mode VPC network IP ranges. For custom mode VPC networks, you can add subnets using the subnetworks insert method.
  /// [description] An optional description of this resource. Provide this field when you create the resource.
  /// [enableUlaInternalIpv6] Enable ULA internal ipv6 on this network. Enabling this feature will assign a /48 from google defined ULA prefix fd20::/20. .
  /// [internalIpv6Range] When enabling ula internal ipv6, caller optionally can specify the /48 range they want from the google defined ULA prefix fd20::/20. The input must be a valid /48 ULA IPv6 address and must be within the fd20::/20. Operation will fail if the speficied /48 is already in used by another resource. If the field is not speficied, then a /48 range will be randomly allocated from fd20::/20 and returned via this field. .
  /// [ipv4Range] Deprecated in favor of subnet mode networks. The range of internal addresses that are legal on this network. This range is a CIDR specification, for example: 192.168.0.0/16. Provided by the client when the network is created.
  /// [mtu] Maximum Transmission Unit in bytes. The minimum value for this field is 1300 and the maximum value is 8896. The suggested value is 1500, which is the default MTU used on the Internet, or 8896 if you want to use Jumbo frames. If unspecified, the value defaults to 1460.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  /// [networkFirewallPolicyEnforcementOrder] The network firewall policy enforcement order. Can be either AFTER_CLASSIC_FIREWALL or BEFORE_CLASSIC_FIREWALL. Defaults to AFTER_CLASSIC_FIREWALL if the field is not specified.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [routingConfig] The network-level routing configuration for this network. Used by Cloud Router to determine what type of network-wide routing behavior to enforce.
  NetworkComputeV1Args({
    bool? autoCreateSubnetworks,
    String? description,
    bool? enableUlaInternalIpv6,
    String? internalIpv6Range,
    String? ipv4Range,
    int? mtu,
    String? name,
    NetworkNetworkFirewallPolicyEnforcementOrderComputeV1?
    networkFirewallPolicyEnforcementOrder,
    String? project,
    String? requestId,
    NetworkRoutingConfigComputeV1? routingConfig,
  }) : autoCreateSubnetworks = pulumi.Input.asOptionalInput<bool>(
         autoCreateSubnetworks,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       enableUlaInternalIpv6 = pulumi.Input.asOptionalInput<bool>(
         enableUlaInternalIpv6,
       ),
       internalIpv6Range = pulumi.Input.asOptionalInput<String>(
         internalIpv6Range,
       ),
       ipv4Range = pulumi.Input.asOptionalInput<String>(ipv4Range),
       mtu = pulumi.Input.asOptionalInput<int>(mtu),
       name = pulumi.Input.asOptionalInput<String>(name),
       networkFirewallPolicyEnforcementOrder =
           pulumi.Input.asOptionalInput<
             NetworkNetworkFirewallPolicyEnforcementOrderComputeV1
           >(networkFirewallPolicyEnforcementOrder),
       project = pulumi.Input.asOptionalInput<String>(project),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       routingConfig = pulumi
           .Input.asOptionalInput<NetworkRoutingConfigComputeV1>(routingConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreateSubnetworks': ?autoCreateSubnetworks,
      'description': ?description,
      'enableUlaInternalIpv6': ?enableUlaInternalIpv6,
      'internalIpv6Range': ?internalIpv6Range,
      'ipv4Range': ?ipv4Range,
      'mtu': ?mtu,
      'name': ?name,
      'networkFirewallPolicyEnforcementOrder':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkNetworkFirewallPolicyEnforcementOrderComputeV1,
            String
          >(networkFirewallPolicyEnforcementOrder, (value) => value.value),
      'project': ?project,
      'requestId': ?requestId,
      'routingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkRoutingConfigComputeV1,
            Map<String, dynamic>
          >(routingConfig, (value) => value.toMap()),
    };
  }

  factory NetworkComputeV1Args.fromMap(Map<String, dynamic> map) {
    return NetworkComputeV1Args(
      autoCreateSubnetworks: map['autoCreateSubnetworks'] == null
          ? null
          : map['autoCreateSubnetworks'] as bool,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      enableUlaInternalIpv6: map['enableUlaInternalIpv6'] == null
          ? null
          : map['enableUlaInternalIpv6'] as bool,
      internalIpv6Range: map['internalIpv6Range'] == null
          ? null
          : map['internalIpv6Range'] as String,
      ipv4Range: map['ipv4Range'] == null ? null : map['ipv4Range'] as String,
      mtu: map['mtu'] == null ? null : map['mtu'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      networkFirewallPolicyEnforcementOrder:
          map['networkFirewallPolicyEnforcementOrder'] == null
          ? null
          : NetworkNetworkFirewallPolicyEnforcementOrderComputeV1.fromValue(
              map['networkFirewallPolicyEnforcementOrder'] as String,
            ),
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      routingConfig: map['routingConfig'] == null
          ? null
          : NetworkRoutingConfigComputeV1.fromMap(
              (map['routingConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
