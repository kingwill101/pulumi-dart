// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sizes_filter.dart';
import 'get_sizes_sort.dart';

/// {@template pulumi_index_get_sizes_get_sizes_args_doc}
/// Arguments for getSizes.
/// {@endtemplate}
/// {@macro pulumi_index_get_sizes_get_sizes_args_doc}
class GetSizesArgs {
  /// Filter the results.
  /// The `filter` block is documented below.
  final pulumi.Input<List<GetSizesFilter>>? filters;
  /// Sort the results.
  /// The `sort` block is documented below.
  final pulumi.Input<List<GetSizesSort>>? sorts;

  /// Creates a new [GetSizesArgs].
  /// [filters] Filter the results.
  /// [sorts] Sort the results.
  GetSizesArgs({
    List<GetSizesFilter>? filters,
    List<GetSizesSort>? sorts,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetSizesFilter>>(filters),
      sorts = pulumi.Input.asOptionalInput<List<GetSizesSort>>(sorts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetSizesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetSizesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetSizesSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetSizesSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSizesArgs.fromMap(Map<String, dynamic> map) {
    return GetSizesArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetSizesFilter>(map['filters'], (value) => GetSizesFilter.fromMap((value as Map).cast<String, dynamic>())),
      sorts: map['sorts'] == null ? null : pulumi.Input.decodeList<GetSizesSort>(map['sorts'], (value) => GetSizesSort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

