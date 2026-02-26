// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_route_table_propagations_filter/get_route_table_propagations_filter.dart';

/// Arguments for getRouteTablePropagations.
class GetRouteTablePropagationsArgs {
  /// Custom filter block as described below.
  ///
  /// More complex filters can be expressed using one or more <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> sub-blocks,
  /// which take the following arguments:
  final Input<List<GetRouteTablePropagationsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Identifier of EC2 Transit Gateway Route Table.
  final Input<String> transitGatewayRouteTableId;

  GetRouteTablePropagationsArgs({
    this.filters,
    this.region,
    required this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetRouteTablePropagationsFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetRouteTablePropagationsFilter,
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
      filters: Input.asOptionalInput<List<GetRouteTablePropagationsFilter>>(
          map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
      transitGatewayRouteTableId:
          Input.asInput<String>(map['transitGatewayRouteTableId']),
    );
  }
}
