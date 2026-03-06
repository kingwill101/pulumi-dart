// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MainRouteTableAssociation resources.
class MainRouteTableAssociationState {
  /// Used internally, see **Notes** below
  final pulumi.Input<String>? originalRouteTableId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the Route Table to set as the new
  /// main route table for the target VPC
  final pulumi.Input<String>? routeTableId;
  /// The ID of the VPC whose main route table should be set
  final pulumi.Input<String>? vpcId;

  /// Creates a new [MainRouteTableAssociationState].
  /// [originalRouteTableId] Used internally, see **Notes** below
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeTableId] The ID of the Route Table to set as the new
  /// [vpcId] The ID of the VPC whose main route table should be set
  const MainRouteTableAssociationState({
    this.originalRouteTableId,
    this.region,
    this.routeTableId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originalRouteTableId': ?originalRouteTableId,
      'region': ?region,
      'routeTableId': ?routeTableId,
      'vpcId': ?vpcId,
    };
  }

  factory MainRouteTableAssociationState.fromMap(Map<String, dynamic> map) {
    return MainRouteTableAssociationState(
      originalRouteTableId: (() { final guardedValue = map['originalRouteTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTableId: (() { final guardedValue = map['routeTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

