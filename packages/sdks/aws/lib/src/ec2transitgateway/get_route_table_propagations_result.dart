// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_table_propagations_filter.dart';

/// Result data returned by getRouteTablePropagations.
class GetRouteTablePropagationsResult {
  final List<GetRouteTablePropagationsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Set of Transit Gateway Route Table Association identifiers.
  final List<String>? ids;
  final String? region;
  final String? transitGatewayRouteTableId;

  /// Creates a new [GetRouteTablePropagationsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Set of Transit Gateway Route Table Association identifiers.
  /// [region] Optional.
  /// [transitGatewayRouteTableId] Optional.
  const GetRouteTablePropagationsResult({
    this.filters,
    this.id,
    this.ids,
    this.region,
    this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouteTablePropagationsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ids': ?ids,
      'region': ?region,
      'transitGatewayRouteTableId': ?transitGatewayRouteTableId,
    };
  }

  factory GetRouteTablePropagationsResult.fromMap(Map<String, dynamic> map) {
    return GetRouteTablePropagationsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouteTablePropagationsFilter>(guardedValue, (value) => GetRouteTablePropagationsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitGatewayRouteTableId: (() { final guardedValue = map['transitGatewayRouteTableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
