// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_discovery_config_target_big_query_target_filter_table_reference/prevention_discovery_config_target_big_query_target_filter_table_reference.dart';
import '../prevention_discovery_config_target_big_query_target_filter_tables/prevention_discovery_config_target_big_query_target_filter_tables.dart';

class PreventionDiscoveryConfigTargetBigQueryTargetFilter {
  /// Catch-all. This should always be the last filter in the list because anything above it will apply first.
  final Map<String, dynamic>? otherTables;

  /// The table to scan. Discovery configurations including this can only include one DiscoveryTarget (the DiscoveryTarget with this TableReference).
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetBigQueryTargetFilterTableReference?
      tableReference;

  /// A specific set of tables for this filter to apply to. A table collection must be specified in only one filter per config.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetBigQueryTargetFilterTables? tables;

  PreventionDiscoveryConfigTargetBigQueryTargetFilter({
    this.otherTables,
    this.tableReference,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final otherTablesValue = otherTables;
    if (otherTablesValue != null) {
      map['otherTables'] = otherTablesValue;
    }
    final tableReferenceValue = tableReference;
    if (tableReferenceValue != null) {
      map['tableReference'] = tableReferenceValue.toMap();
    }
    final tablesValue = tables;
    if (tablesValue != null) {
      map['tables'] = tablesValue.toMap();
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetBigQueryTargetFilter.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetBigQueryTargetFilter(
      otherTables: map['otherTables'] == null
          ? null
          : (map['otherTables'] as Map).cast<String, dynamic>(),
      tableReference: map['tableReference'] == null
          ? null
          : PreventionDiscoveryConfigTargetBigQueryTargetFilterTableReference
              .fromMap((map['tableReference'] as Map).cast<String, dynamic>()),
      tables: map['tables'] == null
          ? null
          : PreventionDiscoveryConfigTargetBigQueryTargetFilterTables.fromMap(
              (map['tables'] as Map).cast<String, dynamic>()),
    );
  }
}
