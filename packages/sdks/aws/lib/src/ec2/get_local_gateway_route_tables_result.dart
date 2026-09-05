// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_gateway_route_tables_filter.dart';

/// Result data returned by getLocalGatewayRouteTables.
class GetLocalGatewayRouteTablesResult {
  final List<GetLocalGatewayRouteTablesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Set of Local Gateway Route Table identifiers
  final List<String>? ids;
  final String? region;
  final Map<String, String>? tags;

  /// Creates a new [GetLocalGatewayRouteTablesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Set of Local Gateway Route Table identifiers
  /// [region] Optional.
  /// [tags] Optional.
  const GetLocalGatewayRouteTablesResult({
    this.filters,
    this.id,
    this.ids,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLocalGatewayRouteTablesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ids': ?ids,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetLocalGatewayRouteTablesResult.fromMap(Map<String, dynamic> map) {
    return GetLocalGatewayRouteTablesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLocalGatewayRouteTablesFilter>(guardedValue, (value) => GetLocalGatewayRouteTablesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
