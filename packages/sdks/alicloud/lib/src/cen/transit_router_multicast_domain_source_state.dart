// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransitRouterMulticastDomainSource resources.
class TransitRouterMulticastDomainSourceState {
  /// The IP address of the multicast group to which the multicast source belongs. Value range: **224.0.0.1** to **239.255.255.254**. If the multicast group you specified does not exist in the current multicast domain, the system will automatically create a new multicast group for you.
  final pulumi.Input<String>? groupIpAddress;
  /// ENI ID of the multicast source.
  final pulumi.Input<String>? networkInterfaceId;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The ID of the multicast domain to which the multicast source belongs.
  final pulumi.Input<String>? transitRouterMulticastDomainId;
  /// The VPC to which the ENI of the multicast source belongs. This field is mandatory for VPCs that is owned by another accounts.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [TransitRouterMulticastDomainSourceState].
  /// [groupIpAddress] The IP address of the multicast group to which the multicast source belongs. Value range: **224.0.0.1** to **239.255.255.254**. If the multicast group you specified does not exist in the current multicast domain, the system will automatically create a new multicast group for you.
  /// [networkInterfaceId] ENI ID of the multicast source.
  /// [status] The status of the resource
  /// [transitRouterMulticastDomainId] The ID of the multicast domain to which the multicast source belongs.
  /// [vpcId] The VPC to which the ENI of the multicast source belongs. This field is mandatory for VPCs that is owned by another accounts.
  TransitRouterMulticastDomainSourceState({
    this.groupIpAddress,
    this.networkInterfaceId,
    this.status,
    this.transitRouterMulticastDomainId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIpAddress': ?groupIpAddress,
      'networkInterfaceId': ?networkInterfaceId,
      'status': ?status,
      'transitRouterMulticastDomainId': ?transitRouterMulticastDomainId,
      'vpcId': ?vpcId,
    };
  }

  factory TransitRouterMulticastDomainSourceState.fromMap(Map<String, dynamic> map) {
    return TransitRouterMulticastDomainSourceState(
      groupIpAddress: map['groupIpAddress'] == null ? null : (map['groupIpAddress']! as String).input(),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : (map['networkInterfaceId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      transitRouterMulticastDomainId: map['transitRouterMulticastDomainId'] == null ? null : (map['transitRouterMulticastDomainId']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
    );
  }
}

