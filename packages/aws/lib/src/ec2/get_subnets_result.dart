// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnets_filter.dart';

/// Result data returned by getSubnets.
class GetSubnetsResult {
  final List<GetSubnetsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of all the subnet ids found.
  final List<String> ids;
  final String region;
  final Map<String, String> tags;

  /// Creates a new [GetSubnetsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] List of all the subnet ids found.
  /// [region] Required.
  /// [tags] Required.
  GetSubnetsResult({
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
          pulumi.Input.encodeList<GetSubnetsFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ids'] = ids;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetSubnetsResult.fromMap(Map<String, dynamic> map) {
    return GetSubnetsResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetSubnetsFilter>(
              map['filters'],
              (value) => GetSubnetsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
