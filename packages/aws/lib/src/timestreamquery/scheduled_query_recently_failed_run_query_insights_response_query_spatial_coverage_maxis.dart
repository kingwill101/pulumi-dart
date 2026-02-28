// ignore_for_file: unused_element, unnecessary_cast

class ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverageMaxis {
  /// Partition key used for partitioning, which can be a default measure_name or a customer defined partition key.
  final List<String>? partitionKeys;

  /// ARN of the table which is queried with the largest time range.
  final String? tableArn;

  /// Maximum duration in nanoseconds between the start and end of the query.
  final double? value;

  /// Creates a new [ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverageMaxis].
  /// [partitionKeys] Partition key used for partitioning, which can be a default measure_name or a customer defined partition key.
  /// [tableArn] ARN of the table which is queried with the largest time range.
  /// [value] Maximum duration in nanoseconds between the start and end of the query.
  ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverageMaxis({
    this.partitionKeys,
    this.tableArn,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final partitionKeysValue = partitionKeys;
    if (partitionKeysValue != null) {
      map['partitionKeys'] = partitionKeysValue;
    }
    final tableArnValue = tableArn;
    if (tableArnValue != null) {
      map['tableArn'] = tableArnValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverageMaxis.fromMap(
      Map<String, dynamic> map) {
    return ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverageMaxis(
      partitionKeys: map['partitionKeys'] == null
          ? null
          : (map['partitionKeys'] as List).cast<String>(),
      tableArn: map['tableArn'] == null ? null : map['tableArn'] as String,
      value: map['value'] == null ? null : map['value'] as double,
    );
  }
}
