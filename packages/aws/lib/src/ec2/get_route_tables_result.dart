// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_tables_filter.dart';

/// Result data returned by getRouteTables.
class GetRouteTablesResult {
  final List<GetRouteTablesFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of all the route table ids found.
  final List<String> ids;
  final String region;
  final Map<String, String> tags;
  final String? vpcId;

  /// Creates a new [GetRouteTablesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] List of all the route table ids found.
  /// [region] Required.
  /// [tags] Required.
  /// [vpcId] Optional.
  GetRouteTablesResult({
    this.filters,
    required this.id,
    required this.ids,
    required this.region,
    required this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          pulumi.Input.encodeList<GetRouteTablesFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ids'] = ids;
    map['region'] = region;
    map['tags'] = tags;
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory GetRouteTablesResult.fromMap(Map<String, dynamic> map) {
    return GetRouteTablesResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetRouteTablesFilter>(
              map['filters'],
              (value) => GetRouteTablesFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
