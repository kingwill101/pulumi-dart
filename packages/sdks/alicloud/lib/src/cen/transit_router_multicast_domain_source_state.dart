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
    pulumi.Output<String>? groupIpAddress,
    pulumi.Output<String>? networkInterfaceId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? transitRouterMulticastDomainId,
    pulumi.Output<String>? vpcId,
  }) :
      groupIpAddress = pulumi.Input.asOptionalInput<String>(groupIpAddress),
      networkInterfaceId = pulumi.Input.asOptionalInput<String>(networkInterfaceId),
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouterMulticastDomainId = pulumi.Input.asOptionalInput<String>(transitRouterMulticastDomainId),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      groupIpAddress: map['groupIpAddress'] == null ? null : pulumi.Output.create<String>(map['groupIpAddress'] as String),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transitRouterMulticastDomainId: map['transitRouterMulticastDomainId'] == null ? null : pulumi.Output.create<String>(map['transitRouterMulticastDomainId'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

