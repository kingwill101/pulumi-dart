// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tags_filter.dart';
import 'get_tags_sort_by.dart';
import 'get_tags_time_period.dart';

/// Result data returned by getTags.
class GetTagsResult {
  final GetTagsFilter? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? searchString;
  final List<GetTagsSortBy>? sortBies;
  final String? tagKey;
  /// Tags that match your request.
  final List<String>? tags;
  final GetTagsTimePeriod? timePeriod;

  /// Creates a new [GetTagsResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [searchString] Optional.
  /// [sortBies] Optional.
  /// [tagKey] Optional.
  /// [tags] Tags that match your request.
  /// [timePeriod] Optional.
  const GetTagsResult({
    this.filter,
    this.id,
    this.searchString,
    this.sortBies,
    this.tagKey,
    this.tags,
    this.timePeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter?.toMap(),
      'id': ?id,
      'searchString': ?searchString,
      'sortBies': ?(() { final guardedValue = sortBies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTagsSortBy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tagKey': ?tagKey,
      'tags': ?tags,
      'timePeriod': ?timePeriod?.toMap(),
    };
  }

  factory GetTagsResult.fromMap(Map<String, dynamic> map) {
    return GetTagsResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetTagsFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      searchString: (() { final guardedValue = map['searchString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sortBies: (() { final guardedValue = map['sortBies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTagsSortBy>(guardedValue, (value) => GetTagsSortBy.fromMap((value as Map).cast<String, dynamic>())); })(),
      tagKey: (() { final guardedValue = map['tagKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      timePeriod: (() { final guardedValue = map['timePeriod']; if (guardedValue == null) return null; return GetTagsTimePeriod.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
