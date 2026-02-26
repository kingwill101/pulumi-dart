// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../prevention_discovery_config_target_big_query_target_filter_tables_include_regexes_pattern/prevention_discovery_config_target_big_query_target_filter_tables_include_regexes_pattern.dart';

class PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexes {
  /// The group of regular expression patterns to match against one or more resources. Maximum of 100 entries. The sum of all lengths of regular expressions can't exceed 10 KiB.
  /// Structure is documented below.
  final List<
          PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexesPattern>?
      patterns;

  PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexes({
    this.patterns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final patternsValue = patterns;
    if (patternsValue != null) {
      map['patterns'] = Input.encodeList<
          PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexesPattern,
          Map<String, dynamic>>(patternsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexes.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexes(
      patterns: map['patterns'] == null
          ? null
          : Input.decodeList<
                  PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexesPattern>(
              map['patterns'],
              (value) =>
                  PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexesPattern
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
