// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_managed_prefix_lists_filter/get_managed_prefix_lists_filter.dart';

/// Result data returned by getManagedPrefixLists.
class GetManagedPrefixListsResult {
  final List<GetManagedPrefixListsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of all the managed prefix list ids found.
  final List<String> ids;
  final String region;
  final Map<String, String> tags;

  GetManagedPrefixListsResult({
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
          Input.encodeList<GetManagedPrefixListsFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ids'] = ids;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetManagedPrefixListsResult.fromMap(Map<String, dynamic> map) {
    return GetManagedPrefixListsResult(
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetManagedPrefixListsFilter>(
              map['filters'],
              (value) => GetManagedPrefixListsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
