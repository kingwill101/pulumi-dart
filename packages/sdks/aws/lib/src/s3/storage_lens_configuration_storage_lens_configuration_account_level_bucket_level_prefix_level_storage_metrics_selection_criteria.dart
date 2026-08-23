// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetricsSelectionCriteria {
  /// Delimiter of the selection criteria being used.
  final pulumi.Input<String>? delimiter;
  /// Max depth of the selection criteria.
  final pulumi.Input<int>? maxDepth;
  /// Minimum number of storage bytes percentage whose metrics will be selected.
  final pulumi.Input<double>? minStorageBytesPercentage;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetricsSelectionCriteria].
  /// [delimiter] Delimiter of the selection criteria being used.
  /// [maxDepth] Max depth of the selection criteria.
  /// [minStorageBytesPercentage] Minimum number of storage bytes percentage whose metrics will be selected.
  const StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetricsSelectionCriteria({
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
      delimiter: (() { final guardedValue = map['delimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxDepth: (() { final guardedValue = map['maxDepth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minStorageBytesPercentage: (() { final guardedValue = map['minStorageBytesPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
