// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_engines_filter.dart';

/// {@template pulumi_index_get_database_engines_get_database_engines_args_doc}
/// Arguments for getDatabaseEngines.
/// {@endtemplate}
/// {@macro pulumi_index_get_database_engines_get_database_engines_args_doc}
class GetDatabaseEnginesArgs {
  final pulumi.Input<List<GetDatabaseEnginesFilter>>? filters;
  /// If true, only the latest engine version will be returned.
  ///
  /// * `filter` - (Optional) A set of filters used to select engines that meet certain requirements.
  final pulumi.Input<bool>? latest;
  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;
  /// The attribute to order the results by. (`version`)
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetDatabaseEnginesArgs].
  /// [filters] Optional.
  /// [latest] If true, only the latest engine version will be returned.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. (`version`)
  GetDatabaseEnginesArgs({
    List<GetDatabaseEnginesFilter>? filters,
    bool? latest,
    String? order,
    String? orderBy,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetDatabaseEnginesFilter>>(filters),
      latest = pulumi.Input.asOptionalInput<bool>(latest),
      order = pulumi.Input.asOptionalInput<String>(order),
      orderBy = pulumi.Input.asOptionalInput<String>(orderBy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetDatabaseEnginesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetDatabaseEnginesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'latest': ?latest,
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetDatabaseEnginesArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseEnginesArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetDatabaseEnginesFilter>(map['filters'], (value) => GetDatabaseEnginesFilter.fromMap((value as Map).cast<String, dynamic>())),
      latest: map['latest'] == null ? null : map['latest'] as bool,
      order: map['order'] == null ? null : map['order'] as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy'] as String,
    );
  }
}

