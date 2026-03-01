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
    required pulumi.Output<String> groupIpAddress,
    required pulumi.Output<String> networkInterfaceId,
    required pulumi.Output<String> transitRouterMulticastDomainId,
    pulumi.Output<String>? vpcId,
  }) :
      groupIpAddress = pulumi.Input.asInput<String>(groupIpAddress),
      networkInterfaceId = pulumi.Input.asInput<String>(networkInterfaceId),
      transitRouterMulticastDomainId = pulumi.Input.asInput<String>(transitRouterMulticastDomainId),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      groupIpAddress: pulumi.Output.create<String>(map['groupIpAddress'] as String),
      networkInterfaceId: pulumi.Output.create<String>(map['networkInterfaceId'] as String),
      transitRouterMulticastDomainId: pulumi.Output.create<String>(map['transitRouterMulticastDomainId'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

