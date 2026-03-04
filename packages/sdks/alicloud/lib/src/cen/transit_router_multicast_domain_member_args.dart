// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_transit_router_multicast_domain_member_transit_router_multicast_domain_member_args_doc}
/// The set of arguments for TransitRouterMulticastDomainMember.
/// {@endtemplate}
/// {@macro pulumi_cen_transit_router_multicast_domain_member_transit_router_multicast_domain_member_args_doc}
class TransitRouterMulticastDomainMemberArgs {
  /// Specifies whether only to precheck the request.
  final pulumi.Input<bool>? dryRun;

  /// The IP address of the multicast group to which the multicast member belongs. If the multicast group you specified does not exist in the current multicast domain, the system will automatically create a new multicast group for you in the current multicast domain.
  final pulumi.Input<String> groupIpAddress;

  /// The ID of the ENI.
  final pulumi.Input<String> networkInterfaceId;

  /// The ID of the multicast domain to which the multicast member belongs.
  final pulumi.Input<String> transitRouterMulticastDomainId;

  /// The VPC to which the ENI of the multicast member belongs. This field is mandatory for VPCs owned by another accounts.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [TransitRouterMulticastDomainMemberArgs].
  /// [dryRun] Specifies whether only to precheck the request.
  /// [groupIpAddress] The IP address of the multicast group to which the multicast member belongs. If the multicast group you specified does not exist in the current multicast domain, the system will automatically create a new multicast group for you in the current multicast domain.
  /// [networkInterfaceId] The ID of the ENI.
  /// [transitRouterMulticastDomainId] The ID of the multicast domain to which the multicast member belongs.
  /// [vpcId] The VPC to which the ENI of the multicast member belongs. This field is mandatory for VPCs owned by another accounts.
  TransitRouterMulticastDomainMemberArgs({
    this.dryRun,
    required this.groupIpAddress,
    required this.networkInterfaceId,
    required this.transitRouterMulticastDomainId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'groupIpAddress': groupIpAddress,
      'networkInterfaceId': networkInterfaceId,
      'transitRouterMulticastDomainId': transitRouterMulticastDomainId,
      'vpcId': ?vpcId,
    };
  }

  factory TransitRouterMulticastDomainMemberArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return TransitRouterMulticastDomainMemberArgs(
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      groupIpAddress: pulumi.Input.fromValue(map['groupIpAddress'] as String),
      networkInterfaceId: pulumi.Input.fromValue(
        map['networkInterfaceId'] as String,
      ),
      transitRouterMulticastDomainId: pulumi.Input.fromValue(
        map['transitRouterMulticastDomainId'] as String,
      ),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
