// ignore_for_file: unused_element, unnecessary_cast

class GetRouteTableAssociation {
  /// ID of an Internet Gateway or Virtual Private Gateway which is connected to the Route Table (not exported if not passed as a parameter).
  final String gatewayId;

  /// Whether the association is due to the main route table.
  final bool main;

  /// Association ID.
  final String routeTableAssociationId;

  /// ID of the specific Route Table to retrieve.
  final String routeTableId;

  /// ID of a Subnet which is connected to the Route Table (not exported if not passed as a parameter).
  final String subnetId;

  GetRouteTableAssociation({
    required this.gatewayId,
    required this.main,
    required this.routeTableAssociationId,
    required this.routeTableId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gatewayId'] = gatewayId;
    map['main'] = main;
    map['routeTableAssociationId'] = routeTableAssociationId;
    map['routeTableId'] = routeTableId;
    map['subnetId'] = subnetId;
    return map;
  }

  factory GetRouteTableAssociation.fromMap(Map<String, dynamic> map) {
    return GetRouteTableAssociation(
      gatewayId: map['gatewayId'] as String,
      main: map['main'] as bool,
      routeTableAssociationId: map['routeTableAssociationId'] as String,
      routeTableId: map['routeTableId'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}
