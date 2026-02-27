// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_tags_filter/get_tags_filter.dart';
import '../get_tags_sort_by/get_tags_sort_by.dart';
import '../get_tags_time_period/get_tags_time_period.dart';

/// Arguments for getTags.
class GetTagsArgs {
  /// Configuration block for the `Expression` object used to categorize costs. See `filter` block below for details.
  final pulumi.Input<GetTagsFilter>? filter;

  /// Value that you want to search for.
  final pulumi.Input<String>? searchString;

  /// Configuration block for the value by which you want to sort the data. `sort_by` block below for details.
  final pulumi.Input<List<GetTagsSortBy>>? sortBies;

  /// Key of the tag that you want to return values for.
  final pulumi.Input<String>? tagKey;

  /// Configuration block for the start and end dates for retrieving the dimension values. See `time_period` block below for details.
  final pulumi.Input<GetTagsTimePeriod> timePeriod;

  GetTagsArgs({
    this.filter,
    this.searchString,
    this.sortBies,
    this.tagKey,
    required this.timePeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = pulumi.Input.mapOptionalInputValue<GetTagsFilter,
          Map<String, dynamic>>(filterValue, (value) => value.toMap());
    }
    final searchStringValue = searchString;
    if (searchStringValue != null) {
      map['searchString'] = searchStringValue;
    }
    final sortBiesValue = sortBies;
    if (sortBiesValue != null) {
      map['sortBies'] = pulumi.Input.mapOptionalInputValue<List<GetTagsSortBy>,
              List<Map<String, dynamic>>>(
          sortBiesValue,
          (value) =>
              pulumi.Input.encodeList<GetTagsSortBy, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final tagKeyValue = tagKey;
    if (tagKeyValue != null) {
      map['tagKey'] = tagKeyValue;
    }
    map['timePeriod'] =
        pulumi.Input.mapInputValue<GetTagsTimePeriod, Map<String, dynamic>>(
            timePeriod, (value) => value.toMap());
    return map;
  }

  factory GetTagsArgs.fromMap(Map<String, dynamic> map) {
    return GetTagsArgs(
      filter: pulumi.Input.asOptionalInput<GetTagsFilter>(map['filter']),
      searchString: pulumi.Input.asOptionalInput<String>(map['searchString']),
      sortBies:
          pulumi.Input.asOptionalInput<List<GetTagsSortBy>>(map['sortBies']),
      tagKey: pulumi.Input.asOptionalInput<String>(map['tagKey']),
      timePeriod: pulumi.Input.asInput<GetTagsTimePeriod>(map['timePeriod']),
    );
  }
}
