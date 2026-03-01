// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_gateway_route_tables_filter.dart';

/// {@template pulumi_ec2_get_transit_gateway_route_tables_get_transit_gateway_route_tables_args_doc}
/// Arguments for getTransitGatewayRouteTables.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_transit_gateway_route_tables_get_transit_gateway_route_tables_args_doc}
class GetTransitGatewayRouteTablesArgs {
  /// Custom filter block as described below.
  final pulumi.Input<List<GetTransitGatewayRouteTablesFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Mapping of tags, each pair of which must exactly match
  /// a pair on the desired transit gateway route table.
  ///
  /// More complex filters can be expressed using one or more `filter` sub-blocks,
  /// which take the following arguments:
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetTransitGatewayRouteTablesArgs].
  /// [filters] Custom filter block as described below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Mapping of tags, each pair of which must exactly match
  GetTransitGatewayRouteTablesArgs({
    List<GetTransitGatewayRouteTablesFilter>? filters,
    String? region,
    Map<String, String>? tags,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetTransitGatewayRouteTablesFilter>>(filters),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetTransitGatewayRouteTablesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetTransitGatewayRouteTablesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetTransitGatewayRouteTablesArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitGatewayRouteTablesArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetTransitGatewayRouteTablesFilter>(map['filters'], (value) => GetTransitGatewayRouteTablesFilter.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

