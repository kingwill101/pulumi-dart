// ignore_for_file: unused_element, unnecessary_cast

class ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis {
  /// Partition key used for partitioning, which can be a default<span pulumi-lang-nodejs=" measureName " pulumi-lang-dotnet=" MeasureName " pulumi-lang-go=" measureName " pulumi-lang-python=" measure_name " pulumi-lang-yaml=" measureName " pulumi-lang-java=" measureName "> measure_name </span>or a customer defined partition key.
  final List<String>? partitionKeys;

  /// ARN of the table which is queried with the largest time range.
  final String? tableArn;

  /// Maximum duration in nanoseconds between the start and end of the query.
  final double? value;

  ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis({
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

  factory ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis.fromMap(
      Map<String, dynamic> map) {
    return ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis(
      partitionKeys: map['partitionKeys'] == null
          ? null
          : (map['partitionKeys'] as List).cast<String>(),
      tableArn: map['tableArn'] == null ? null : map['tableArn'] as String,
      value: map['value'] == null ? null : map['value'] as double,
    );
  }
}
