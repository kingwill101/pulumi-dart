// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_tags_filter/get_tags_filter.dart';
import '../get_tags_sort_by/get_tags_sort_by.dart';
import '../get_tags_time_period/get_tags_time_period.dart';

/// Arguments for getTags.
class GetTagsArgs {
  /// Configuration block for the `Expression` object used to categorize costs. See <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> block below for details.
  final Input<GetTagsFilter>? filter;

  /// Value that you want to search for.
  final Input<String>? searchString;

  /// Configuration block for the value by which you want to sort the data. <span pulumi-lang-nodejs="`sortBy`" pulumi-lang-dotnet="`SortBy`" pulumi-lang-go="`sortBy`" pulumi-lang-python="`sort_by`" pulumi-lang-yaml="`sortBy`" pulumi-lang-java="`sortBy`">`sort_by`</span> block below for details.
  final Input<List<GetTagsSortBy>>? sortBies;

  /// Key of the tag that you want to return values for.
  final Input<String>? tagKey;

  /// Configuration block for the start and end dates for retrieving the dimension values. See <span pulumi-lang-nodejs="`timePeriod`" pulumi-lang-dotnet="`TimePeriod`" pulumi-lang-go="`timePeriod`" pulumi-lang-python="`time_period`" pulumi-lang-yaml="`timePeriod`" pulumi-lang-java="`timePeriod`">`time_period`</span> block below for details.
  final Input<GetTagsTimePeriod> timePeriod;

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
      map['filter'] =
          Input.mapOptionalInputValue<GetTagsFilter, Map<String, dynamic>>(
              filterValue, (value) => value.toMap());
    }
    final searchStringValue = searchString;
    if (searchStringValue != null) {
      map['searchString'] = searchStringValue;
    }
    final sortBiesValue = sortBies;
    if (sortBiesValue != null) {
      map['sortBies'] = Input.mapOptionalInputValue<List<GetTagsSortBy>,
              List<Map<String, dynamic>>>(
          sortBiesValue,
          (value) => Input.encodeList<GetTagsSortBy, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final tagKeyValue = tagKey;
    if (tagKeyValue != null) {
      map['tagKey'] = tagKeyValue;
    }
    map['timePeriod'] =
        Input.mapInputValue<GetTagsTimePeriod, Map<String, dynamic>>(
            timePeriod, (value) => value.toMap());
    return map;
  }

  factory GetTagsArgs.fromMap(Map<String, dynamic> map) {
    return GetTagsArgs(
      filter: Input.asOptionalInput<GetTagsFilter>(map['filter']),
      searchString: Input.asOptionalInput<String>(map['searchString']),
      sortBies: Input.asOptionalInput<List<GetTagsSortBy>>(map['sortBies']),
      tagKey: Input.asOptionalInput<String>(map['tagKey']),
      timePeriod: Input.asInput<GetTagsTimePeriod>(map['timePeriod']),
    );
  }
}
