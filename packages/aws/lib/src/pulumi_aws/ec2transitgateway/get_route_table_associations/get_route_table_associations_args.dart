// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_route_table_associations_filter/get_route_table_associations_filter.dart';

/// Arguments for getRouteTableAssociations.
class GetRouteTableAssociationsArgs {
  /// Custom filter block as described below.
  ///
  /// More complex filters can be expressed using one or more `filter` sub-blocks,
  /// which take the following arguments:
  final pulumi.Input<List<GetRouteTableAssociationsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Identifier of EC2 Transit Gateway Route Table.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> transitGatewayRouteTableId;

  GetRouteTableAssociationsArgs({
    this.filters,
    this.region,
    required this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetRouteTableAssociationsFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetRouteTableAssociationsFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['transitGatewayRouteTableId'] = transitGatewayRouteTableId;
    return map;
  }

  factory GetRouteTableAssociationsArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteTableAssociationsArgs(
      filters:
          pulumi.Input.asOptionalInput<List<GetRouteTableAssociationsFilter>>(
              map['filters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      transitGatewayRouteTableId:
          pulumi.Input.asInput<String>(map['transitGatewayRouteTableId']),
    );
  }
}
