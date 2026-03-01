// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_discovery_config_target_cloud_storage_target_filter_collection_include_regexes_pattern_cloud_storage_regex.dart';

class PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPattern {
  /// Regex for Cloud Storage.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPatternCloudStorageRegex?
  cloudStorageRegex;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPattern].
  /// [cloudStorageRegex] Regex for Cloud Storage.
  PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPattern({
    this.cloudStorageRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStorageRegex': ?cloudStorageRegex == null
          ? null
          : cloudStorageRegex!.toMap(),
    };
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPattern.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPattern(
      cloudStorageRegex: map['cloudStorageRegex'] == null
          ? null
          : PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPatternCloudStorageRegex.fromMap(
              (map['cloudStorageRegex'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
