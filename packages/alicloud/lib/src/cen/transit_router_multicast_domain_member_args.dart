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
    bool? dryRun,
    required String groupIpAddress,
    required String networkInterfaceId,
    required String transitRouterMulticastDomainId,
    String? vpcId,
  }) :
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      groupIpAddress = pulumi.Input.asInput<String>(groupIpAddress),
      networkInterfaceId = pulumi.Input.asInput<String>(networkInterfaceId),
      transitRouterMulticastDomainId = pulumi.Input.asInput<String>(transitRouterMulticastDomainId),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'groupIpAddress': groupIpAddress,
      'networkInterfaceId': networkInterfaceId,
      'transitRouterMulticastDomainId': transitRouterMulticastDomainId,
      'vpcId': ?vpcId,
    };
  }

  factory TransitRouterMulticastDomainMemberArgs.fromMap(Map<String, dynamic> map) {
    return TransitRouterMulticastDomainMemberArgs(
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      groupIpAddress: map['groupIpAddress'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      transitRouterMulticastDomainId: map['transitRouterMulticastDomainId'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

