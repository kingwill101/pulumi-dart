// ignore_for_file: unused_element, unnecessary_cast

class StreamRuleSetCustomizationRuleBigqueryPartitioningTimeUnitPartition {
  /// The partitioning column.
  final String column;

  /// Partition granularity.
  /// Possible values are: `PARTITIONING_TIME_GRANULARITY_UNSPECIFIED`, `PARTITIONING_TIME_GRANULARITY_HOUR`, `PARTITIONING_TIME_GRANULARITY_DAY`, `PARTITIONING_TIME_GRANULARITY_MONTH`, `PARTITIONING_TIME_GRANULARITY_YEAR`.
  final String? partitioningTimeGranularity;

  /// Creates a new [StreamRuleSetCustomizationRuleBigqueryPartitioningTimeUnitPartition].
  /// [column] The partitioning column.
  /// [partitioningTimeGranularity] Partition granularity.
  StreamRuleSetCustomizationRuleBigqueryPartitioningTimeUnitPartition({
    required this.column,
    this.partitioningTimeGranularity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['column'] = column;
    final partitioningTimeGranularityValue = partitioningTimeGranularity;
    if (partitioningTimeGranularityValue != null) {
      map['partitioningTimeGranularity'] = partitioningTimeGranularityValue;
    }
    return map;
  }

  factory StreamRuleSetCustomizationRuleBigqueryPartitioningTimeUnitPartition.fromMap(
      Map<String, dynamic> map) {
    return StreamRuleSetCustomizationRuleBigqueryPartitioningTimeUnitPartition(
      column: map['column'] as String,
      partitioningTimeGranularity: map['partitioningTimeGranularity'] == null
          ? null
          : map['partitioningTimeGranularity'] as String,
    );
  }
}
