// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tags_filter.dart';
import 'get_tags_sort_by.dart';
import 'get_tags_time_period.dart';

/// Result data returned by getTags.
class GetTagsResult {
  final GetTagsFilter? filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? searchString;
  final List<GetTagsSortBy>? sortBies;
  final String? tagKey;

  /// Tags that match your request.
  final List<String> tags;
  final GetTagsTimePeriod timePeriod;

  /// Creates a new [GetTagsResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [searchString] Optional.
  /// [sortBies] Optional.
  /// [tagKey] Optional.
  /// [tags] Tags that match your request.
  /// [timePeriod] Required.
  GetTagsResult({
    this.filter,
    required this.id,
    this.searchString,
    this.sortBies,
    this.tagKey,
    required this.tags,
    required this.timePeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter == null ? null : filter!.toMap(),
      'id': id,
      'searchString': ?searchString,
      'sortBies': ?sortBies == null
          ? null
          : pulumi.Input.encodeList<GetTagsSortBy, Map<String, dynamic>>(
              sortBies!,
              (value) => value.toMap(),
            ),
      'tagKey': ?tagKey,
      'tags': tags,
      'timePeriod': timePeriod.toMap(),
    };
  }

  factory GetTagsResult.fromMap(Map<String, dynamic> map) {
    return GetTagsResult(
      filter: map['filter'] == null
          ? null
          : GetTagsFilter.fromMap(
              (map['filter'] as Map).cast<String, dynamic>(),
            ),
      id: map['id'] as String,
      searchString: map['searchString'] == null
          ? null
          : map['searchString'] as String,
      sortBies: map['sortBies'] == null
          ? null
          : pulumi.Input.decodeList<GetTagsSortBy>(
              map['sortBies'],
              (value) =>
                  GetTagsSortBy.fromMap((value as Map).cast<String, dynamic>()),
            ),
      tagKey: map['tagKey'] == null ? null : map['tagKey'] as String,
      tags: (map['tags'] as List).cast<String>(),
      timePeriod: GetTagsTimePeriod.fromMap(
        (map['timePeriod'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
