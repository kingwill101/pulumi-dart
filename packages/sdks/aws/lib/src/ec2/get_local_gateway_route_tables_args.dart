// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_gateway_route_tables_filter.dart';

/// {@template pulumi_ec2_get_local_gateway_route_tables_get_local_gateway_route_tables_args_doc}
/// Arguments for getLocalGatewayRouteTables.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_local_gateway_route_tables_get_local_gateway_route_tables_args_doc}
class GetLocalGatewayRouteTablesArgs {
  /// Custom filter block as described below.
  ///
  /// More complex filters can be expressed using one or more `filter` sub-blocks,
  /// which take the following arguments:
  final pulumi.Input<List<GetLocalGatewayRouteTablesFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Mapping of tags, each pair of which must exactly match
  /// a pair on the desired local gateway route table.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetLocalGatewayRouteTablesArgs].
  /// [filters] Custom filter block as described below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Mapping of tags, each pair of which must exactly match
  GetLocalGatewayRouteTablesArgs({
    pulumi.Output<List<GetLocalGatewayRouteTablesFilter>>? filters,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetLocalGatewayRouteTablesFilter>>(filters),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetLocalGatewayRouteTablesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetLocalGatewayRouteTablesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetLocalGatewayRouteTablesArgs.fromMap(Map<String, dynamic> map) {
    return GetLocalGatewayRouteTablesArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetLocalGatewayRouteTablesFilter>>(pulumi.Input.decodeList<GetLocalGatewayRouteTablesFilter>(map['filters'], (value) => GetLocalGatewayRouteTablesFilter.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

