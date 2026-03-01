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
    return <String, dynamic>{
      'filters': ?filters == null
          ? null
          : pulumi.Input.encodeList<GetSubnetsFilter, Map<String, dynamic>>(
              filters!,
              (value) => value.toMap(),
            ),
      'id': id,
      'ids': ids,
      'region': region,
      'tags': tags,
    };
  }

  factory GetSubnetsResult.fromMap(Map<String, dynamic> map) {
    return GetSubnetsResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetSubnetsFilter>(
              map['filters'],
              (value) => GetSubnetsFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
