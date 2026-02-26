// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_route_table_routes_filter/get_route_table_routes_filter.dart';

/// Arguments for getRouteTableRoutes.
class GetRouteTableRoutesArgs {
  /// Custom filter block as described below.
  final Input<List<GetRouteTableRoutesFilter>> filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Identifier of EC2 Transit Gateway Route Table.
  ///
  /// More complex filters can be expressed using one or more <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> sub-blocks,
  /// which take the following arguments:
  final Input<String> transitGatewayRouteTableId;

  GetRouteTableRoutesArgs({
    required this.filters,
    this.region,
    required this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filters'] = Input.mapInputValue<List<GetRouteTableRoutesFilter>,
            List<Map<String, dynamic>>>(
        filters,
        (value) =>
            Input.encodeList<GetRouteTableRoutesFilter, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['transitGatewayRouteTableId'] = transitGatewayRouteTableId;
    return map;
  }

  factory GetRouteTableRoutesArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteTableRoutesArgs(
      filters: Input.asInput<List<GetRouteTableRoutesFilter>>(map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
      transitGatewayRouteTableId:
          Input.asInput<String>(map['transitGatewayRouteTableId']),
    );
  }
}
