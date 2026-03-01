// ignore_for_file: unused_element, unnecessary_cast

class ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis {
  /// Partition key used for partitioning, which can be a default measure_name or a customer defined partition key.
  final List<String>? partitionKeys;

  /// ARN of the table which is queried with the largest time range.
  final String? tableArn;

  /// Maximum duration in nanoseconds between the start and end of the query.
  final double? value;

  /// Creates a new [ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis].
  /// [partitionKeys] Partition key used for partitioning, which can be a default measure_name or a customer defined partition key.
  /// [tableArn] ARN of the table which is queried with the largest time range.
  /// [value] Maximum duration in nanoseconds between the start and end of the query.
  ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis({
    this.partitionKeys,
    this.tableArn,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionKeys': ?partitionKeys,
      'tableArn': ?tableArn,
      'value': ?value,
    };
  }

  factory ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis.fromMap(
    Map<String, dynamic> map,
  ) {
    return ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis(
      partitionKeys: map['partitionKeys'] == null
          ? null
          : (map['partitionKeys'] as List).cast<String>(),
      tableArn: map['tableArn'] == null ? null : map['tableArn'] as String,
      value: map['value'] == null ? null : map['value'] as double,
    );
  }
}
