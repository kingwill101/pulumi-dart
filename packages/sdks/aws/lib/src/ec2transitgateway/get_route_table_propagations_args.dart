// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_table_propagations_filter.dart';

/// {@template pulumi_ec2transitgateway_get_route_table_propagations_get_route_table_propagations_args_doc}
/// Arguments for getRouteTablePropagations.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_get_route_table_propagations_get_route_table_propagations_args_doc}
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

  /// Creates a new [GetRouteTablePropagationsArgs].
  /// [filters] Custom filter block as described below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [transitGatewayRouteTableId] Identifier of EC2 Transit Gateway Route Table.
  GetRouteTablePropagationsArgs({
    this.filters,
    this.region,
    required this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetRouteTablePropagationsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetRouteTablePropagationsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'transitGatewayRouteTableId': transitGatewayRouteTableId,
    };
  }

  factory GetRouteTablePropagationsArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteTablePropagationsArgs(
      filters: map['filters'] == null ? null : ((pulumi.Input.decodeList<GetRouteTablePropagationsFilter>(map['filters']!, (value) => GetRouteTablePropagationsFilter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      transitGatewayRouteTableId: (map['transitGatewayRouteTableId'] as String).input(),
    );
  }
}

