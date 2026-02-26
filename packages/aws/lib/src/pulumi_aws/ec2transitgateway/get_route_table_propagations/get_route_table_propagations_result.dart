// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_route_table_propagations_filter/get_route_table_propagations_filter.dart';

/// Result data returned by getRouteTablePropagations.
class GetRouteTablePropagationsResult {
  final List<GetRouteTablePropagationsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of Transit Gateway Route Table Association identifiers.
  final List<String> ids;
  final String region;
  final String transitGatewayRouteTableId;

  GetRouteTablePropagationsResult({
    this.filters,
    required this.id,
    required this.ids,
    required this.region,
    required this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.encodeList<GetRouteTablePropagationsFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ids'] = ids;
    map['region'] = region;
    map['transitGatewayRouteTableId'] = transitGatewayRouteTableId;
    return map;
  }

  factory GetRouteTablePropagationsResult.fromMap(Map<String, dynamic> map) {
    return GetRouteTablePropagationsResult(
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetRouteTablePropagationsFilter>(
              map['filters'],
              (value) => GetRouteTablePropagationsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      transitGatewayRouteTableId: map['transitGatewayRouteTableId'] as String,
    );
  }
}
