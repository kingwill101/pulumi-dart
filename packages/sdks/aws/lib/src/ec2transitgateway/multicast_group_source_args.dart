// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2transitgateway_multicast_group_source_multicast_group_source_args_doc}
/// The set of arguments for MulticastGroupSource.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_multicast_group_source_multicast_group_source_args_doc}
class MulticastGroupSourceArgs {
  /// The IP address assigned to the transit gateway multicast group.
  final pulumi.Input<String> groupIpAddress;
  /// The group members' network interface ID to register with the transit gateway multicast group.
  final pulumi.Input<String> networkInterfaceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the transit gateway multicast domain.
  final pulumi.Input<String> transitGatewayMulticastDomainId;

  /// Creates a new [MulticastGroupSourceArgs].
  /// [groupIpAddress] The IP address assigned to the transit gateway multicast group.
  /// [networkInterfaceId] The group members' network interface ID to register with the transit gateway multicast group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [transitGatewayMulticastDomainId] The ID of the transit gateway multicast domain.
  MulticastGroupSourceArgs({
    required this.groupIpAddress,
    required this.networkInterfaceId,
    this.region,
    required this.transitGatewayMulticastDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIpAddress': groupIpAddress,
      'networkInterfaceId': networkInterfaceId,
      'region': ?region,
      'transitGatewayMulticastDomainId': transitGatewayMulticastDomainId,
    };
  }

  factory MulticastGroupSourceArgs.fromMap(Map<String, dynamic> map) {
    return MulticastGroupSourceArgs(
      groupIpAddress: (map['groupIpAddress'] as String).input(),
      networkInterfaceId: (map['networkInterfaceId'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      transitGatewayMulticastDomainId: (map['transitGatewayMulticastDomainId'] as String).input(),
    );
  }
}

