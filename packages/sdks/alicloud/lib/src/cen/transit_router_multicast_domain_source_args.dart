// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_transit_router_multicast_domain_source_transit_router_multicast_domain_source_args_doc}
/// The set of arguments for TransitRouterMulticastDomainSource.
/// {@endtemplate}
/// {@macro pulumi_cen_transit_router_multicast_domain_source_transit_router_multicast_domain_source_args_doc}
class TransitRouterMulticastDomainSourceArgs {
  /// The IP address of the multicast group to which the multicast source belongs. Value range: **224.0.0.1** to **239.255.255.254**. If the multicast group you specified does not exist in the current multicast domain, the system will automatically create a new multicast group for you.
  final pulumi.Input<String> groupIpAddress;
  /// ENI ID of the multicast source.
  final pulumi.Input<String> networkInterfaceId;
  /// The ID of the multicast domain to which the multicast source belongs.
  final pulumi.Input<String> transitRouterMulticastDomainId;
  /// The VPC to which the ENI of the multicast source belongs. This field is mandatory for VPCs that is owned by another accounts.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [TransitRouterMulticastDomainSourceArgs].
  /// [groupIpAddress] The IP address of the multicast group to which the multicast source belongs. Value range: **224.0.0.1** to **239.255.255.254**. If the multicast group you specified does not exist in the current multicast domain, the system will automatically create a new multicast group for you.
  /// [networkInterfaceId] ENI ID of the multicast source.
  /// [transitRouterMulticastDomainId] The ID of the multicast domain to which the multicast source belongs.
  /// [vpcId] The VPC to which the ENI of the multicast source belongs. This field is mandatory for VPCs that is owned by another accounts.
  TransitRouterMulticastDomainSourceArgs({
    required this.groupIpAddress,
    required this.networkInterfaceId,
    required this.transitRouterMulticastDomainId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIpAddress': groupIpAddress,
      'networkInterfaceId': networkInterfaceId,
      'transitRouterMulticastDomainId': transitRouterMulticastDomainId,
      'vpcId': ?vpcId,
    };
  }

  factory TransitRouterMulticastDomainSourceArgs.fromMap(Map<String, dynamic> map) {
    return TransitRouterMulticastDomainSourceArgs(
      groupIpAddress: (map['groupIpAddress'] as String).input(),
      networkInterfaceId: (map['networkInterfaceId'] as String).input(),
      transitRouterMulticastDomainId: (map['transitRouterMulticastDomainId'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

