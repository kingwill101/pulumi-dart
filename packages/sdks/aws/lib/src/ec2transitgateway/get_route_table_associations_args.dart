// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_table_associations_filter.dart';

/// {@template pulumi_ec2transitgateway_get_route_table_associations_get_route_table_associations_args_doc}
/// Arguments for getRouteTableAssociations.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_get_route_table_associations_get_route_table_associations_args_doc}
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

  /// Creates a new [GetRouteTableAssociationsArgs].
  /// [filters] Custom filter block as described below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [transitGatewayRouteTableId] Identifier of EC2 Transit Gateway Route Table.
  const GetRouteTableAssociationsArgs({
    this.filters,
    this.region,
    required this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetRouteTableAssociationsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetRouteTableAssociationsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'transitGatewayRouteTableId': transitGatewayRouteTableId,
    };
  }

  factory GetRouteTableAssociationsArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteTableAssociationsArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetRouteTableAssociationsFilter>(guardedValue, (value) => GetRouteTableAssociationsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitGatewayRouteTableId: pulumi.Input.fromValue(map['transitGatewayRouteTableId'] as String),
    );
  }
}

