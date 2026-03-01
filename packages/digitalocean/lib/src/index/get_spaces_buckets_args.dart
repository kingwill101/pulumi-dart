// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spaces_buckets_filter.dart';
import 'get_spaces_buckets_sort.dart';

/// {@template pulumi_index_get_spaces_buckets_get_spaces_buckets_args_doc}
/// Arguments for getSpacesBuckets.
/// {@endtemplate}
/// {@macro pulumi_index_get_spaces_buckets_get_spaces_buckets_args_doc}
class GetSpacesBucketsArgs {
  /// Filter the results.
  /// The `filter` block is documented below.
  final pulumi.Input<List<GetSpacesBucketsFilter>>? filters;
  /// Sort the results.
  /// The `sort` block is documented below.
  final pulumi.Input<List<GetSpacesBucketsSort>>? sorts;

  /// Creates a new [GetSpacesBucketsArgs].
  /// [filters] Filter the results.
  /// [sorts] Sort the results.
  GetSpacesBucketsArgs({
    List<GetSpacesBucketsFilter>? filters,
    List<GetSpacesBucketsSort>? sorts,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetSpacesBucketsFilter>>(filters),
      sorts = pulumi.Input.asOptionalInput<List<GetSpacesBucketsSort>>(sorts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetSpacesBucketsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetSpacesBucketsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetSpacesBucketsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetSpacesBucketsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSpacesBucketsArgs.fromMap(Map<String, dynamic> map) {
    return GetSpacesBucketsArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetSpacesBucketsFilter>(map['filters'], (value) => GetSpacesBucketsFilter.fromMap((value as Map).cast<String, dynamic>())),
      sorts: map['sorts'] == null ? null : pulumi.Input.decodeList<GetSpacesBucketsSort>(map['sorts'], (value) => GetSpacesBucketsSort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

