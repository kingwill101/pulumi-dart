// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_route_table_propagations_filter/get_route_table_propagations_filter.dart';

/// Arguments for getRouteTablePropagations.
class GetRouteTablePropagationsArgs {
  /// Custom filter block as described below.
  ///
  /// More complex filters can be expressed using one or more `filter` sub-blocks,
  /// which take the following arguments:
  final pulumi.Input<List<GetRouteTablePropagationsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Identifier of EC2 Transit Gateway Route Table.
  final pulumi.Input<String> transitGatewayRouteTableId;

  GetRouteTablePropagationsArgs({
    this.filters,
    this.region,
    required this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetRouteTablePropagationsFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetRouteTablePropagationsFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['transitGatewayRouteTableId'] = transitGatewayRouteTableId;
    return map;
  }

  factory GetRouteTablePropagationsArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteTablePropagationsArgs(
      filters:
          pulumi.Input.asOptionalInput<List<GetRouteTablePropagationsFilter>>(
              map['filters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      transitGatewayRouteTableId:
          pulumi.Input.asInput<String>(map['transitGatewayRouteTableId']),
    );
  }
}
