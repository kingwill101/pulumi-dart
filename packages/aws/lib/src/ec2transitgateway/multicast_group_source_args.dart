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
    required String groupIpAddress,
    required String networkInterfaceId,
    String? region,
    required String transitGatewayMulticastDomainId,
  })  : groupIpAddress = pulumi.Input.asInput<String>(groupIpAddress),
        networkInterfaceId = pulumi.Input.asInput<String>(networkInterfaceId),
        region = pulumi.Input.asOptionalInput<String>(region),
        transitGatewayMulticastDomainId =
            pulumi.Input.asInput<String>(transitGatewayMulticastDomainId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupIpAddress'] = groupIpAddress;
    map['networkInterfaceId'] = networkInterfaceId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['transitGatewayMulticastDomainId'] = transitGatewayMulticastDomainId;
    return map;
  }

  factory MulticastGroupSourceArgs.fromMap(Map<String, dynamic> map) {
    return MulticastGroupSourceArgs(
      groupIpAddress: map['groupIpAddress'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      transitGatewayMulticastDomainId:
          map['transitGatewayMulticastDomainId'] as String,
    );
  }
}
