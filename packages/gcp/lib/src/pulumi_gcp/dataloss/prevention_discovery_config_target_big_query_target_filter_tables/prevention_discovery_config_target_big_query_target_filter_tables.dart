// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_discovery_config_target_big_query_target_filter_tables_include_regexes/prevention_discovery_config_target_big_query_target_filter_tables_include_regexes.dart';

class PreventionDiscoveryConfigTargetBigQueryTargetFilterTables {
  /// A collection of regular expressions to match a BQ table against.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexes?
      includeRegexes;

  PreventionDiscoveryConfigTargetBigQueryTargetFilterTables({
    this.includeRegexes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final includeRegexesValue = includeRegexes;
    if (includeRegexesValue != null) {
      map['includeRegexes'] = includeRegexesValue.toMap();
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetBigQueryTargetFilterTables.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetBigQueryTargetFilterTables(
      includeRegexes: map['includeRegexes'] == null
          ? null
          : PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexes
              .fromMap((map['includeRegexes'] as Map).cast<String, dynamic>()),
    );
  }
}
