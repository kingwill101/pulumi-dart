// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_transit_gateway_route_tables_filter/get_transit_gateway_route_tables_filter.dart';

/// Arguments for getTransitGatewayRouteTables.
class GetTransitGatewayRouteTablesArgs {
  /// Custom filter block as described below.
  final Input<List<GetTransitGatewayRouteTablesFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Mapping of tags, each pair of which must exactly match
  /// a pair on the desired transit gateway route table.
  ///
  /// More complex filters can be expressed using one or more <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> sub-blocks,
  /// which take the following arguments:
  final Input<Map<String, String>>? tags;

  GetTransitGatewayRouteTablesArgs({
    this.filters,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetTransitGatewayRouteTablesFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetTransitGatewayRouteTablesFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetTransitGatewayRouteTablesArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitGatewayRouteTablesArgs(
      filters: Input.asOptionalInput<List<GetTransitGatewayRouteTablesFilter>>(
          map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
