// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NatFirewallNatRouteEntryList {
  /// The destination network segment of the default route.
  final pulumi.Input<String> destinationCidr;
  /// The next hop address of the original NAT gateway.
  final pulumi.Input<String> nexthopId;
  /// The network type of the next hop. Value: NatGateway : NAT Gateway.
  final pulumi.Input<String> nexthopType;
  /// The route table where the default route of the NAT gateway is located.
  final pulumi.Input<String> routeTableId;

  /// Creates a new [NatFirewallNatRouteEntryList].
  /// [destinationCidr] The destination network segment of the default route.
  /// [nexthopId] The next hop address of the original NAT gateway.
  /// [nexthopType] The network type of the next hop. Value: NatGateway : NAT Gateway.
  /// [routeTableId] The route table where the default route of the NAT gateway is located.
  NatFirewallNatRouteEntryList({
    required this.destinationCidr,
    required this.nexthopId,
    required this.nexthopType,
    required this.routeTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidr': destinationCidr,
      'nexthopId': nexthopId,
      'nexthopType': nexthopType,
      'routeTableId': routeTableId,
    };
  }

  factory NatFirewallNatRouteEntryList.fromMap(Map<String, dynamic> map) {
    return NatFirewallNatRouteEntryList(
      destinationCidr: (map['destinationCidr'] as String).input(),
      nexthopId: (map['nexthopId'] as String).input(),
      nexthopType: (map['nexthopType'] as String).input(),
      routeTableId: (map['routeTableId'] as String).input(),
    );
  }
}

