// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_route_table_associations_filter/get_route_table_associations_filter.dart';

/// Result data returned by getRouteTableAssociations.
class GetRouteTableAssociationsResult {
  final List<GetRouteTableAssociationsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of Transit Gateway Route Table Association identifiers.
  final List<String> ids;
  final String region;
  final String transitGatewayRouteTableId;

  GetRouteTableAssociationsResult({
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
      map['filters'] = pulumi.Input.encodeList<GetRouteTableAssociationsFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ids'] = ids;
    map['region'] = region;
    map['transitGatewayRouteTableId'] = transitGatewayRouteTableId;
    return map;
  }

  factory GetRouteTableAssociationsResult.fromMap(Map<String, dynamic> map) {
    return GetRouteTableAssociationsResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetRouteTableAssociationsFilter>(
              map['filters'],
              (value) => GetRouteTableAssociationsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      transitGatewayRouteTableId: map['transitGatewayRouteTableId'] as String,
    );
  }
}
