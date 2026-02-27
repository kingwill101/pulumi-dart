// ignore_for_file: unused_element, unnecessary_cast

class FlowLogDestinationOptions {
  /// File format for the flow log. Default value: `plain-text`. Valid values: `plain-text`, `parquet`.
  final String? fileFormat;

  /// Indicates whether to use Hive-compatible prefixes for flow logs stored in Amazon S3. Default value: `false`.
  final bool? hiveCompatiblePartitions;

  /// Indicates whether to partition the flow log per hour. This reduces the cost and response time for queries. Default value: `false`.
  final bool? perHourPartition;

  FlowLogDestinationOptions({
    this.fileFormat,
    this.hiveCompatiblePartitions,
    this.perHourPartition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fileFormatValue = fileFormat;
    if (fileFormatValue != null) {
      map['fileFormat'] = fileFormatValue;
    }
    final hiveCompatiblePartitionsValue = hiveCompatiblePartitions;
    if (hiveCompatiblePartitionsValue != null) {
      map['hiveCompatiblePartitions'] = hiveCompatiblePartitionsValue;
    }
    final perHourPartitionValue = perHourPartition;
    if (perHourPartitionValue != null) {
      map['perHourPartition'] = perHourPartitionValue;
    }
    return map;
  }

  factory FlowLogDestinationOptions.fromMap(Map<String, dynamic> map) {
    return FlowLogDestinationOptions(
      fileFormat:
          map['fileFormat'] == null ? null : map['fileFormat'] as String,
      hiveCompatiblePartitions: map['hiveCompatiblePartitions'] == null
          ? null
          : map['hiveCompatiblePartitions'] as bool,
      perHourPartition: map['perHourPartition'] == null
          ? null
          : map['perHourPartition'] as bool,
    );
  }
}
