// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_discovery_config_target_cloud_sql_target_filter_collection_include_regexes.dart';

class PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollection {
  /// A collection of regular expressions to match a resource against.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexes?
      includeRegexes;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollection].
  /// [includeRegexes] A collection of regular expressions to match a resource against.
  PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollection({
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

  factory PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollection.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollection(
      includeRegexes: map['includeRegexes'] == null
          ? null
          : PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexes
              .fromMap((map['includeRegexes'] as Map).cast<String, dynamic>()),
    );
  }
}
