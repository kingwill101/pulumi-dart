// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_table_associations_filter.dart';

/// Result data returned by getRouteTableAssociations.
class GetRouteTableAssociationsResult {
  final List<GetRouteTableAssociationsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Set of Transit Gateway Route Table Association identifiers.
  final List<String>? ids;
  final String? region;
  final String? transitGatewayRouteTableId;

  /// Creates a new [GetRouteTableAssociationsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Set of Transit Gateway Route Table Association identifiers.
  /// [region] Optional.
  /// [transitGatewayRouteTableId] Optional.
  const GetRouteTableAssociationsResult({
    this.filters,
    this.id,
    this.ids,
    this.region,
    this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouteTableAssociationsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ids': ?ids,
      'region': ?region,
      'transitGatewayRouteTableId': ?transitGatewayRouteTableId,
    };
  }

  factory GetRouteTableAssociationsResult.fromMap(Map<String, dynamic> map) {
    return GetRouteTableAssociationsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouteTableAssociationsFilter>(guardedValue, (value) => GetRouteTableAssociationsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitGatewayRouteTableId: (() { final guardedValue = map['transitGatewayRouteTableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
