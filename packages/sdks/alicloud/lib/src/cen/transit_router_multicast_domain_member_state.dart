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
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? groupIpAddress,
    pulumi.Output<String>? networkInterfaceId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? transitRouterMulticastDomainId,
    pulumi.Output<String>? vpcId,
  }) :
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      groupIpAddress = pulumi.Input.asOptionalInput<String>(groupIpAddress),
      networkInterfaceId = pulumi.Input.asOptionalInput<String>(networkInterfaceId),
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouterMulticastDomainId = pulumi.Input.asOptionalInput<String>(transitRouterMulticastDomainId),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      groupIpAddress: map['groupIpAddress'] == null ? null : pulumi.Output.create<String>(map['groupIpAddress'] as String),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transitRouterMulticastDomainId: map['transitRouterMulticastDomainId'] == null ? null : pulumi.Output.create<String>(map['transitRouterMulticastDomainId'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

