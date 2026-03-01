// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_discovery_config_target_cloud_storage_target_filter_collection_include_regexes.dart';

class PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollection {
  /// A collection of regular expressions to match a resource against.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexes?
  includeRegexes;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollection].
  /// [includeRegexes] A collection of regular expressions to match a resource against.
  PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollection({
    this.includeRegexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeRegexes': ?includeRegexes == null
          ? null
          : includeRegexes!.toMap(),
    };
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollection.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollection(
      includeRegexes: map['includeRegexes'] == null
          ? null
          : PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexes.fromMap(
              (map['includeRegexes'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
