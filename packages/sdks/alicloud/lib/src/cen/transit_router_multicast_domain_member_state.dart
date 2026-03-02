// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransitRouterMulticastDomainMember resources.
class TransitRouterMulticastDomainMemberState {
  /// Specifies whether only to precheck the request.
  final pulumi.Input<bool>? dryRun;
  /// The IP address of the multicast group to which the multicast member belongs. If the multicast group you specified does not exist in the current multicast domain, the system will automatically create a new multicast group for you in the current multicast domain.
  final pulumi.Input<String>? groupIpAddress;
  /// The ID of the ENI.
  final pulumi.Input<String>? networkInterfaceId;
  /// The status of the Transit Router Multicast Domain Member.
  final pulumi.Input<String>? status;
  /// The ID of the multicast domain to which the multicast member belongs.
  final pulumi.Input<String>? transitRouterMulticastDomainId;
  /// The VPC to which the ENI of the multicast member belongs. This field is mandatory for VPCs owned by another accounts.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [TransitRouterMulticastDomainMemberState].
  /// [dryRun] Specifies whether only to precheck the request.
  /// [groupIpAddress] The IP address of the multicast group to which the multicast member belongs. If the multicast group you specified does not exist in the current multicast domain, the system will automatically create a new multicast group for you in the current multicast domain.
  /// [networkInterfaceId] The ID of the ENI.
  /// [status] The status of the Transit Router Multicast Domain Member.
  /// [transitRouterMulticastDomainId] The ID of the multicast domain to which the multicast member belongs.
  /// [vpcId] The VPC to which the ENI of the multicast member belongs. This field is mandatory for VPCs owned by another accounts.
  TransitRouterMulticastDomainMemberState({
    this.dryRun,
    this.groupIpAddress,
    this.networkInterfaceId,
    this.status,
    this.transitRouterMulticastDomainId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'groupIpAddress': ?groupIpAddress,
      'networkInterfaceId': ?networkInterfaceId,
      'status': ?status,
      'transitRouterMulticastDomainId': ?transitRouterMulticastDomainId,
      'vpcId': ?vpcId,
    };
  }

  factory TransitRouterMulticastDomainMemberState.fromMap(Map<String, dynamic> map) {
    return TransitRouterMulticastDomainMemberState(
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      groupIpAddress: map['groupIpAddress'] == null ? null : (map['groupIpAddress'] as String).input(),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : (map['networkInterfaceId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      transitRouterMulticastDomainId: map['transitRouterMulticastDomainId'] == null ? null : (map['transitRouterMulticastDomainId'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

