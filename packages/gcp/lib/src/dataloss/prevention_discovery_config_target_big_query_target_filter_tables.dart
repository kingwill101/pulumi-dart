// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_discovery_config_target_big_query_target_filter_tables_include_regexes.dart';

class PreventionDiscoveryConfigTargetBigQueryTargetFilterTables {
  /// A collection of regular expressions to match a BQ table against.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexes?
  includeRegexes;

  /// Creates a new [PreventionDiscoveryConfigTargetBigQueryTargetFilterTables].
  /// [includeRegexes] A collection of regular expressions to match a BQ table against.
  PreventionDiscoveryConfigTargetBigQueryTargetFilterTables({
    this.includeRegexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeRegexes': ?includeRegexes == null
          ? null
          : includeRegexes!.toMap(),
    };
  }

  factory PreventionDiscoveryConfigTargetBigQueryTargetFilterTables.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDiscoveryConfigTargetBigQueryTargetFilterTables(
      includeRegexes: map['includeRegexes'] == null
          ? null
          : PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexes.fromMap(
              (map['includeRegexes'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
