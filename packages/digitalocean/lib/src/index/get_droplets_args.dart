// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_droplets_filter.dart';
import 'get_droplets_sort.dart';

/// {@template pulumi_index_get_droplets_get_droplets_args_doc}
/// Arguments for getDroplets.
/// {@endtemplate}
/// {@macro pulumi_index_get_droplets_get_droplets_args_doc}
class GetDropletsArgs {
  /// Filter the results.
  /// The `filter` block is documented below.
  final pulumi.Input<List<GetDropletsFilter>>? filters;
  /// A boolean value specifying whether or not to list GPU Droplets
  final pulumi.Input<bool>? gpus;
  /// Sort the results.
  /// The `sort` block is documented below.
  final pulumi.Input<List<GetDropletsSort>>? sorts;

  /// Creates a new [GetDropletsArgs].
  /// [filters] Filter the results.
  /// [gpus] A boolean value specifying whether or not to list GPU Droplets
  /// [sorts] Sort the results.
  GetDropletsArgs({
    List<GetDropletsFilter>? filters,
    bool? gpus,
    List<GetDropletsSort>? sorts,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetDropletsFilter>>(filters),
      gpus = pulumi.Input.asOptionalInput<bool>(gpus),
      sorts = pulumi.Input.asOptionalInput<List<GetDropletsSort>>(sorts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetDropletsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetDropletsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gpus': ?gpus,
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetDropletsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetDropletsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDropletsArgs.fromMap(Map<String, dynamic> map) {
    return GetDropletsArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetDropletsFilter>(map['filters'], (value) => GetDropletsFilter.fromMap((value as Map).cast<String, dynamic>())),
      gpus: map['gpus'] == null ? null : map['gpus'] as bool,
      sorts: map['sorts'] == null ? null : pulumi.Input.decodeList<GetDropletsSort>(map['sorts'], (value) => GetDropletsSort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

