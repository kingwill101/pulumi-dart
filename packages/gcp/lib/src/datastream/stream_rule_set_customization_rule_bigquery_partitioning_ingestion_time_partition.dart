// ignore_for_file: unused_element, unnecessary_cast


class StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartition {
  /// Partition granularity.
  /// Possible values are: `PARTITIONING_TIME_GRANULARITY_UNSPECIFIED`, `PARTITIONING_TIME_GRANULARITY_HOUR`, `PARTITIONING_TIME_GRANULARITY_DAY`, `PARTITIONING_TIME_GRANULARITY_MONTH`, `PARTITIONING_TIME_GRANULARITY_YEAR`.
  final String? partitioningTimeGranularity;

  /// Creates a new [StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartition].
  /// [partitioningTimeGranularity] Partition granularity.
  StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartition({
    this.partitioningTimeGranularity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitioningTimeGranularity': ?partitioningTimeGranularity,
    };
  }

  factory StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartition.fromMap(Map<String, dynamic> map) {
    return StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartition(
      partitioningTimeGranularity: map['partitioningTimeGranularity'] == null ? null : map['partitioningTimeGranularity'] as String,
    );
  }
}

