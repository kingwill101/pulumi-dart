// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteTableAssociation {
  /// ID of an Internet Gateway or Virtual Private Gateway which is connected to the Route Table (not exported if not passed as a parameter).
  final pulumi.Input<String> gatewayId;

  /// Whether the association is due to the main route table.
  final pulumi.Input<bool> main;

  /// Association ID.
  final pulumi.Input<String> routeTableAssociationId;

  /// ID of the specific Route Table to retrieve.
  final pulumi.Input<String> routeTableId;

  /// ID of a Subnet which is connected to the Route Table (not exported if not passed as a parameter).
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetRouteTableAssociation].
  /// [gatewayId] ID of an Internet Gateway or Virtual Private Gateway which is connected to the Route Table (not exported if not passed as a parameter).
  /// [main] Whether the association is due to the main route table.
  /// [routeTableAssociationId] Association ID.
  /// [routeTableId] ID of the specific Route Table to retrieve.
  /// [subnetId] ID of a Subnet which is connected to the Route Table (not exported if not passed as a parameter).
  GetRouteTableAssociation({
    required this.gatewayId,
    required this.main,
    required this.routeTableAssociationId,
    required this.routeTableId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayId': gatewayId,
      'main': main,
      'routeTableAssociationId': routeTableAssociationId,
      'routeTableId': routeTableId,
      'subnetId': subnetId,
    };
  }

  factory GetRouteTableAssociation.fromMap(Map<String, dynamic> map) {
    return GetRouteTableAssociation(
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      main: pulumi.Input.fromValue(map['main'] as bool),
      routeTableAssociationId: pulumi.Input.fromValue(
        map['routeTableAssociationId'] as String,
      ),
      routeTableId: pulumi.Input.fromValue(map['routeTableId'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
