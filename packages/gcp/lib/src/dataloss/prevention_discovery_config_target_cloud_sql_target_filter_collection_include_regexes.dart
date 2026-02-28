// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_cloud_sql_target_filter_collection_include_regexes_pattern.dart';

class PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexes {
  /// The group of regular expression patterns to match against one or more resources. Maximum of 100 entries. The sum of all lengths of regular expressions can't exceed 10 KiB.
  /// Structure is documented below.
  final List<PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexesPattern>? patterns;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexes].
  /// [patterns] The group of regular expression patterns to match against one or more resources. Maximum of 100 entries. The sum of all lengths of regular expressions can't exceed 10 KiB.
  PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexes({
    this.patterns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patterns': ?patterns == null ? null : pulumi.Input.encodeList<PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexesPattern, Map<String, dynamic>>(patterns!, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexes.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexes(
      patterns: map['patterns'] == null ? null : pulumi.Input.decodeList<PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexesPattern>(map['patterns'], (value) => PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexesPattern.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

