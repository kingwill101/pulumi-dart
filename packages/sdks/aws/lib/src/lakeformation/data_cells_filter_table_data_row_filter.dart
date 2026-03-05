// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataCellsFilterTableDataRowFilter {
  /// (Optional) A wildcard that matches all rows. Required when applying column-level filtering without row-level filtering. Use an empty block: `all_rows_wildcard {}`.
  final pulumi.Input<Map<String, dynamic>>? allRowsWildcard;
  /// (Optional) A PartiQL predicate expression for row-level filtering.
  final pulumi.Input<String>? filterExpression;

  /// Creates a new [DataCellsFilterTableDataRowFilter].
  /// [allRowsWildcard] (Optional) A wildcard that matches all rows. Required when applying column-level filtering without row-level filtering. Use an empty block: `all_rows_wildcard {}`.
  /// [filterExpression] (Optional) A PartiQL predicate expression for row-level filtering.
  DataCellsFilterTableDataRowFilter({
    this.allRowsWildcard,
    this.filterExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allRowsWildcard': ?allRowsWildcard,
      'filterExpression': ?filterExpression,
    };
  }

  factory DataCellsFilterTableDataRowFilter.fromMap(Map<String, dynamic> map) {
    return DataCellsFilterTableDataRowFilter(
      allRowsWildcard: (() { final guardedValue = map['allRowsWildcard']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      filterExpression: (() { final guardedValue = map['filterExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

