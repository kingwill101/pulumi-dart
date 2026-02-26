// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../default_route_table_association_timeouts/default_route_table_association_timeouts.dart';

/// The set of arguments for DefaultRouteTableAssociation.
class DefaultRouteTableAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<DefaultRouteTableAssociationTimeouts>? timeouts;

  /// ID of the Transit Gateway to change the default association route table on.
  final Input<String> transitGatewayId;

  /// ID of the Transit Gateway Route Table to be made the default association route table.
  final Input<String> transitGatewayRouteTableId;

  DefaultRouteTableAssociationArgs({
    this.region,
    this.timeouts,
    required this.transitGatewayId,
    required this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          DefaultRouteTableAssociationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['transitGatewayId'] = transitGatewayId;
    map['transitGatewayRouteTableId'] = transitGatewayRouteTableId;
    return map;
  }

  factory DefaultRouteTableAssociationArgs.fromMap(Map<String, dynamic> map) {
    return DefaultRouteTableAssociationArgs(
      region: Input.asOptionalInput<String>(map['region']),
      timeouts: Input.asOptionalInput<DefaultRouteTableAssociationTimeouts>(
          map['timeouts']),
      transitGatewayId: Input.asInput<String>(map['transitGatewayId']),
      transitGatewayRouteTableId:
          Input.asInput<String>(map['transitGatewayRouteTableId']),
    );
  }
}
