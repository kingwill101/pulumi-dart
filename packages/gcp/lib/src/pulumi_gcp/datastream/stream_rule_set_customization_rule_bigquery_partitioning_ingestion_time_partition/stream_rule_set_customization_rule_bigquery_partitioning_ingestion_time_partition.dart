// ignore_for_file: unused_element, unnecessary_cast

class StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartition {
  /// Partition granularity.
  /// Possible values are: `PARTITIONING_TIME_GRANULARITY_UNSPECIFIED`, `PARTITIONING_TIME_GRANULARITY_HOUR`, `PARTITIONING_TIME_GRANULARITY_DAY`, `PARTITIONING_TIME_GRANULARITY_MONTH`, `PARTITIONING_TIME_GRANULARITY_YEAR`.
  final String? partitioningTimeGranularity;

  StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartition({
    this.partitioningTimeGranularity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final partitioningTimeGranularityValue = partitioningTimeGranularity;
    if (partitioningTimeGranularityValue != null) {
      map['partitioningTimeGranularity'] = partitioningTimeGranularityValue;
    }
    return map;
  }

  factory StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartition.fromMap(
      Map<String, dynamic> map) {
    return StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartition(
      partitioningTimeGranularity: map['partitioningTimeGranularity'] == null
          ? null
          : map['partitioningTimeGranularity'] as String,
    );
  }
}
