// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_route_table_association_timeouts.dart';

/// Input properties used for looking up and filtering DefaultRouteTableAssociation resources.
class DefaultRouteTableAssociationState {
  final pulumi.Input<String>? originalDefaultRouteTableId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<DefaultRouteTableAssociationTimeouts>? timeouts;
  /// ID of the Transit Gateway to change the default association route table on.
  final pulumi.Input<String>? transitGatewayId;
  /// ID of the Transit Gateway Route Table to be made the default association route table.
  final pulumi.Input<String>? transitGatewayRouteTableId;

  /// Creates a new [DefaultRouteTableAssociationState].
  /// [originalDefaultRouteTableId] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  /// [transitGatewayId] ID of the Transit Gateway to change the default association route table on.
  /// [transitGatewayRouteTableId] ID of the Transit Gateway Route Table to be made the default association route table.
  DefaultRouteTableAssociationState({
    pulumi.Output<String>? originalDefaultRouteTableId,
    pulumi.Output<String>? region,
    pulumi.Output<DefaultRouteTableAssociationTimeouts>? timeouts,
    pulumi.Output<String>? transitGatewayId,
    pulumi.Output<String>? transitGatewayRouteTableId,
  }) :
      originalDefaultRouteTableId = pulumi.Input.asOptionalInput<String>(originalDefaultRouteTableId),
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<DefaultRouteTableAssociationTimeouts>(timeouts),
      transitGatewayId = pulumi.Input.asOptionalInput<String>(transitGatewayId),
      transitGatewayRouteTableId = pulumi.Input.asOptionalInput<String>(transitGatewayRouteTableId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originalDefaultRouteTableId': ?originalDefaultRouteTableId,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DefaultRouteTableAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'transitGatewayId': ?transitGatewayId,
      'transitGatewayRouteTableId': ?transitGatewayRouteTableId,
    };
  }

  factory DefaultRouteTableAssociationState.fromMap(Map<String, dynamic> map) {
    return DefaultRouteTableAssociationState(
      originalDefaultRouteTableId: map['originalDefaultRouteTableId'] == null ? null : pulumi.Output.create<String>(map['originalDefaultRouteTableId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<DefaultRouteTableAssociationTimeouts>(DefaultRouteTableAssociationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      transitGatewayId: map['transitGatewayId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayId'] as String),
      transitGatewayRouteTableId: map['transitGatewayRouteTableId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayRouteTableId'] as String),
    );
  }
}

