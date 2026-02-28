// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_options.dart';
import 'source.dart';

/// Restriction on Datasource.
class DataSourceRestriction {
  /// Filter options restricting the results. If multiple filters are present, they are grouped by object type before joining. Filters with the same object type are joined conjunctively, then the resulting expressions are joined disjunctively. The maximum number of elements is 20. NOTE: Suggest API supports only few filters at the moment: "objecttype", "type" and "mimetype". For now, schema specific filters cannot be used to filter suggestions.
  final List<FilterOptions>? filterOptions;

  /// The source of restriction.
  final Source? source;

  /// Creates a new [DataSourceRestriction].
  /// [filterOptions] Filter options restricting the results. If multiple filters are present, they are grouped by object type before joining. Filters with the same object type are joined conjunctively, then the resulting expressions are joined disjunctively. The maximum number of elements is 20. NOTE: Suggest API supports only few filters at the moment: "objecttype", "type" and "mimetype". For now, schema specific filters cannot be used to filter suggestions.
  /// [source] The source of restriction.
  DataSourceRestriction({
    this.filterOptions,
    this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterOptionsValue = filterOptions;
    if (filterOptionsValue != null) {
      map['filterOptions'] =
          pulumi.Input.encodeList<FilterOptions, Map<String, dynamic>>(
              filterOptionsValue, (value) => value.toMap());
    }
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue.toMap();
    }
    return map;
  }

  factory DataSourceRestriction.fromMap(Map<String, dynamic> map) {
    return DataSourceRestriction(
      filterOptions: map['filterOptions'] == null
          ? null
          : pulumi.Input.decodeList<FilterOptions>(
              map['filterOptions'],
              (value) => FilterOptions.fromMap(
                  (value as Map).cast<String, dynamic>())),
      source: map['source'] == null
          ? null
          : Source.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}
