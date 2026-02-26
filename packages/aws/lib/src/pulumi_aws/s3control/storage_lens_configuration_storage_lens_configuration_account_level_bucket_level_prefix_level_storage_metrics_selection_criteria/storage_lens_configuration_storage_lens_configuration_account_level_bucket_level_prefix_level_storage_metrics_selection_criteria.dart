// ignore_for_file: unused_element, unnecessary_cast

class StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetricsSelectionCriteria {
  /// The delimiter of the selection criteria being used.
  final String? delimiter;

  /// The max depth of the selection criteria.
  final int? maxDepth;

  /// The minimum number of storage bytes percentage whose metrics will be selected.
  final double? minStorageBytesPercentage;

  StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetricsSelectionCriteria({
    this.delimiter,
    this.maxDepth,
    this.minStorageBytesPercentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final delimiterValue = delimiter;
    if (delimiterValue != null) {
      map['delimiter'] = delimiterValue;
    }
    final maxDepthValue = maxDepth;
    if (maxDepthValue != null) {
      map['maxDepth'] = maxDepthValue;
    }
    final minStorageBytesPercentageValue = minStorageBytesPercentage;
    if (minStorageBytesPercentageValue != null) {
      map['minStorageBytesPercentage'] = minStorageBytesPercentageValue;
    }
    return map;
  }

  factory StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetricsSelectionCriteria.fromMap(
      Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetricsSelectionCriteria(
      delimiter: map['delimiter'] == null ? null : map['delimiter'] as String,
      maxDepth: map['maxDepth'] == null ? null : map['maxDepth'] as int,
      minStorageBytesPercentage: map['minStorageBytesPercentage'] == null
          ? null
          : map['minStorageBytesPercentage'] as double,
    );
  }
}
