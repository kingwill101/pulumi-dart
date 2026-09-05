// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowLogDestinationOptions {
  /// File format for the flow log. Default value: `plain-text`. Valid values: `plain-text`, `parquet`.
  final pulumi.Input<String?>? fileFormat;
  /// Whether to use Hive-compatible prefixes for flow logs stored in Amazon S3. Default value: `false`.
  final pulumi.Input<bool?>? hiveCompatiblePartitions;
  /// Whether to partition the flow log per hour. This reduces the cost and response time for queries. Default value: `false`.
  final pulumi.Input<bool?>? perHourPartition;

  /// Creates a new [FlowLogDestinationOptions].
  /// [fileFormat] File format for the flow log. Default value: `plain-text`. Valid values: `plain-text`, `parquet`.
  /// [hiveCompatiblePartitions] Whether to use Hive-compatible prefixes for flow logs stored in Amazon S3. Default value: `false`.
  /// [perHourPartition] Whether to partition the flow log per hour. This reduces the cost and response time for queries. Default value: `false`.
  const FlowLogDestinationOptions({
    this.fileFormat,
    this.hiveCompatiblePartitions,
    this.perHourPartition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileFormat': ?fileFormat,
      'hiveCompatiblePartitions': ?hiveCompatiblePartitions,
      'perHourPartition': ?perHourPartition,
    };
  }

  factory FlowLogDestinationOptions.fromMap(Map<String, dynamic> map) {
    return FlowLogDestinationOptions(
      fileFormat: (() { final guardedValue = map['fileFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hiveCompatiblePartitions: (() { final guardedValue = map['hiveCompatiblePartitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      perHourPartition: (() { final guardedValue = map['perHourPartition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
