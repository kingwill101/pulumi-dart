// ignore_for_file: unused_element, unnecessary_cast


class GetNatFirewallsFirewallNatRouteEntryList {
  /// The destination network segment of the default route.
  final String destinationCidr;
  /// The next hop address of the original NAT gateway.
  final String nexthopId;
  /// The network type of the next hop. Value: NatGateway : NAT Gateway.
  final String nexthopType;
  /// The route table where the default route of the NAT gateway is located.
  final String routeTableId;

  /// Creates a new [GetNatFirewallsFirewallNatRouteEntryList].
  /// [destinationCidr] The destination network segment of the default route.
  /// [nexthopId] The next hop address of the original NAT gateway.
  /// [nexthopType] The network type of the next hop. Value: NatGateway : NAT Gateway.
  /// [routeTableId] The route table where the default route of the NAT gateway is located.
  GetNatFirewallsFirewallNatRouteEntryList({
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

  factory GetNatFirewallsFirewallNatRouteEntryList.fromMap(Map<String, dynamic> map) {
    return GetNatFirewallsFirewallNatRouteEntryList(
      destinationCidr: map['destinationCidr'] as String,
      nexthopId: map['nexthopId'] as String,
      nexthopType: map['nexthopType'] as String,
      routeTableId: map['routeTableId'] as String,
    );
  }
}

