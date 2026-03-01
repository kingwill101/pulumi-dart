// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_filter.dart';
import 'get_domains_sort.dart';

/// {@template pulumi_index_get_domains_get_domains_args_doc}
/// Arguments for getDomains.
/// {@endtemplate}
/// {@macro pulumi_index_get_domains_get_domains_args_doc}
class GetDomainsArgs {
  /// Filter the results.
  /// The `filter` block is documented below.
  final pulumi.Input<List<GetDomainsFilter>>? filters;
  /// Sort the results.
  /// The `sort` block is documented below.
  final pulumi.Input<List<GetDomainsSort>>? sorts;

  /// Creates a new [GetDomainsArgs].
  /// [filters] Filter the results.
  /// [sorts] Sort the results.
  GetDomainsArgs({
    List<GetDomainsFilter>? filters,
    List<GetDomainsSort>? sorts,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetDomainsFilter>>(filters),
      sorts = pulumi.Input.asOptionalInput<List<GetDomainsSort>>(sorts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetDomainsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetDomainsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetDomainsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetDomainsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDomainsArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainsArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetDomainsFilter>(map['filters'], (value) => GetDomainsFilter.fromMap((value as Map).cast<String, dynamic>())),
      sorts: map['sorts'] == null ? null : pulumi.Input.decodeList<GetDomainsSort>(map['sorts'], (value) => GetDomainsSort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

