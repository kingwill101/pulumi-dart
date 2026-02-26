// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../prevention_discovery_config_target_cloud_storage_target_filter_collection_include_regexes_pattern/prevention_discovery_config_target_cloud_storage_target_filter_collection_include_regexes_pattern.dart';

class PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexes {
  /// The group of regular expression patterns to match against one or more resources. Maximum of 100 entries. The sum of all lengths of regular expressions can't exceed 10 KiB.
  /// Structure is documented below.
  final List<
          PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPattern>?
      patterns;

  PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexes({
    this.patterns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final patternsValue = patterns;
    if (patternsValue != null) {
      map['patterns'] = Input.encodeList<
          PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPattern,
          Map<String, dynamic>>(patternsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexes.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexes(
      patterns: map['patterns'] == null
          ? null
          : Input.decodeList<
                  PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPattern>(
              map['patterns'],
              (value) =>
                  PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPattern
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
