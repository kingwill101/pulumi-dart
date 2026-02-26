// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../prevention_discovery_config_target_cloud_sql_target_filter_collection_include_regexes_pattern/prevention_discovery_config_target_cloud_sql_target_filter_collection_include_regexes_pattern.dart';

class PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexes {
  /// The group of regular expression patterns to match against one or more resources. Maximum of 100 entries. The sum of all lengths of regular expressions can't exceed 10 KiB.
  /// Structure is documented below.
  final List<
          PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexesPattern>?
      patterns;

  PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexes({
    this.patterns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final patternsValue = patterns;
    if (patternsValue != null) {
      map['patterns'] = Input.encodeList<
          PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexesPattern,
          Map<String, dynamic>>(patternsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexes.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexes(
      patterns: map['patterns'] == null
          ? null
          : Input.decodeList<
                  PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexesPattern>(
              map['patterns'],
              (value) =>
                  PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexesPattern
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
