// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetricsSelectionCriteria {
  /// The delimiter of the selection criteria being used.
  final pulumi.Input<String>? delimiter;
  /// The max depth of the selection criteria.
  final pulumi.Input<int>? maxDepth;
  /// The minimum number of storage bytes percentage whose metrics will be selected.
  final pulumi.Input<double>? minStorageBytesPercentage;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetricsSelectionCriteria].
  /// [delimiter] The delimiter of the selection criteria being used.
  /// [maxDepth] The max depth of the selection criteria.
  /// [minStorageBytesPercentage] The minimum number of storage bytes percentage whose metrics will be selected.
  StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetricsSelectionCriteria({
    this.delimiter,
    this.maxDepth,
    this.minStorageBytesPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delimiter': ?delimiter,
      'maxDepth': ?maxDepth,
      'minStorageBytesPercentage': ?minStorageBytesPercentage,
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetricsSelectionCriteria.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetricsSelectionCriteria(
      delimiter: map['delimiter'] == null ? null : ((map['delimiter'] as String).input()).input(),
      maxDepth: map['maxDepth'] == null ? null : ((map['maxDepth'] as int).input()).input(),
      minStorageBytesPercentage: map['minStorageBytesPercentage'] == null ? null : ((map['minStorageBytesPercentage'] as double).input()).input(),
    );
  }
}

