// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_discovery_config_target_other_cloud_target_filter_collection_include_regexes.dart';

class PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollection {
  /// A collection of regular expressions to match a resource against.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexes? includeRegexes;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollection].
  /// [includeRegexes] A collection of regular expressions to match a resource against.
  PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollection({
    this.includeRegexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeRegexes': ?includeRegexes == null ? null : includeRegexes!.toMap(),
    };
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollection.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollection(
      includeRegexes: map['includeRegexes'] == null ? null : PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexes.fromMap((map['includeRegexes'] as Map).cast<String, dynamic>()),
    );
  }
}

