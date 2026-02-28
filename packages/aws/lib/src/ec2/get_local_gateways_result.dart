// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_gateways_filter.dart';

/// Result data returned by getLocalGateways.
class GetLocalGatewaysResult {
  final List<GetLocalGatewaysFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of all the Local Gateway identifiers
  final List<String> ids;
  final String region;
  final Map<String, String> tags;

  /// Creates a new [GetLocalGatewaysResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Set of all the Local Gateway identifiers
  /// [region] Required.
  /// [tags] Required.
  GetLocalGatewaysResult({
    this.filters,
    required this.id,
    required this.ids,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          pulumi.Input.encodeList<GetLocalGatewaysFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ids'] = ids;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetLocalGatewaysResult.fromMap(Map<String, dynamic> map) {
    return GetLocalGatewaysResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetLocalGatewaysFilter>(
              map['filters'],
              (value) => GetLocalGatewaysFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
