// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_projects_filter.dart';
import 'get_projects_sort.dart';

/// {@template pulumi_index_get_projects_get_projects_args_doc}
/// Arguments for getProjects.
/// {@endtemplate}
/// {@macro pulumi_index_get_projects_get_projects_args_doc}
class GetProjectsArgs {
  /// Filter the results.
  /// The `filter` block is documented below.
  final pulumi.Input<List<GetProjectsFilter>>? filters;
  /// Sort the results.
  /// The `sort` block is documented below.
  final pulumi.Input<List<GetProjectsSort>>? sorts;

  /// Creates a new [GetProjectsArgs].
  /// [filters] Filter the results.
  /// [sorts] Sort the results.
  GetProjectsArgs({
    List<GetProjectsFilter>? filters,
    List<GetProjectsSort>? sorts,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetProjectsFilter>>(filters),
      sorts = pulumi.Input.asOptionalInput<List<GetProjectsSort>>(sorts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetProjectsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetProjectsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetProjectsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetProjectsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetProjectsArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectsArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetProjectsFilter>(map['filters'], (value) => GetProjectsFilter.fromMap((value as Map).cast<String, dynamic>())),
      sorts: map['sorts'] == null ? null : pulumi.Input.decodeList<GetProjectsSort>(map['sorts'], (value) => GetProjectsSort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

