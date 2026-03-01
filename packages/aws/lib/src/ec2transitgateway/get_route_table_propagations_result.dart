// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_table_propagations_filter.dart';

/// Result data returned by getRouteTablePropagations.
class GetRouteTablePropagationsResult {
  final List<GetRouteTablePropagationsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of Transit Gateway Route Table Association identifiers.
  final List<String> ids;
  final String region;
  final String transitGatewayRouteTableId;

  /// Creates a new [GetRouteTablePropagationsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Set of Transit Gateway Route Table Association identifiers.
  /// [region] Required.
  /// [transitGatewayRouteTableId] Required.
  GetRouteTablePropagationsResult({
    this.filters,
    required this.id,
    required this.ids,
    required this.region,
    required this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null
          ? null
          : pulumi.Input.encodeList<
              GetRouteTablePropagationsFilter,
              Map<String, dynamic>
            >(filters!, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'region': region,
      'transitGatewayRouteTableId': transitGatewayRouteTableId,
    };
  }

  factory GetRouteTablePropagationsResult.fromMap(Map<String, dynamic> map) {
    return GetRouteTablePropagationsResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetRouteTablePropagationsFilter>(
              map['filters'],
              (value) => GetRouteTablePropagationsFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      transitGatewayRouteTableId: map['transitGatewayRouteTableId'] as String,
    );
  }
}
