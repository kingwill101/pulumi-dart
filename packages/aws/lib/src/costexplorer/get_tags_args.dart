// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tags_filter.dart';
import 'get_tags_sort_by.dart';
import 'get_tags_time_period.dart';

/// {@template pulumi_costexplorer_get_tags_get_tags_args_doc}
/// Arguments for getTags.
/// {@endtemplate}
/// {@macro pulumi_costexplorer_get_tags_get_tags_args_doc}
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

  /// Creates a new [GetTagsArgs].
  /// [filter] Configuration block for the `Expression` object used to categorize costs. See `filter` block below for details.
  /// [searchString] Value that you want to search for.
  /// [sortBies] Configuration block for the value by which you want to sort the data. `sort_by` block below for details.
  /// [tagKey] Key of the tag that you want to return values for.
  /// [timePeriod] Configuration block for the start and end dates for retrieving the dimension values. See `time_period` block below for details.
  GetTagsArgs({
    GetTagsFilter? filter,
    String? searchString,
    List<GetTagsSortBy>? sortBies,
    String? tagKey,
    required GetTagsTimePeriod timePeriod,
  }) : filter = pulumi.Input.asOptionalInput<GetTagsFilter>(filter),
       searchString = pulumi.Input.asOptionalInput<String>(searchString),
       sortBies = pulumi.Input.asOptionalInput<List<GetTagsSortBy>>(sortBies),
       tagKey = pulumi.Input.asOptionalInput<String>(tagKey),
       timePeriod = pulumi.Input.asInput<GetTagsTimePeriod>(timePeriod);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter':
          ?pulumi.Input.mapOptionalInputValue<
            GetTagsFilter,
            Map<String, dynamic>
          >(filter, (value) => value.toMap()),
      'searchString': ?searchString,
      'sortBies':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetTagsSortBy>,
            List<Map<String, dynamic>>
          >(
            sortBies,
            (value) =>
                pulumi.Input.encodeList<GetTagsSortBy, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'tagKey': ?tagKey,
      'timePeriod':
          pulumi.Input.mapInputValue<GetTagsTimePeriod, Map<String, dynamic>>(
            timePeriod,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetTagsArgs.fromMap(Map<String, dynamic> map) {
    return GetTagsArgs(
      filter: map['filter'] == null
          ? null
          : GetTagsFilter.fromMap(
              (map['filter'] as Map).cast<String, dynamic>(),
            ),
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
      timePeriod: GetTagsTimePeriod.fromMap(
        (map['timePeriod'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
