// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis {
  /// Partition key used for partitioning, which can be a default measureName or a customer defined partition key.
  final pulumi.Input<List<String>>? partitionKeys;
  /// ARN of the table which is queried with the largest time range.
  final pulumi.Input<String>? tableArn;
  /// Maximum duration in nanoseconds between the start and end of the query.
  final pulumi.Input<double>? value;

  /// Creates a new [ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis].
  /// [partitionKeys] Partition key used for partitioning, which can be a default measureName or a customer defined partition key.
  /// [tableArn] ARN of the table which is queried with the largest time range.
  /// [value] Maximum duration in nanoseconds between the start and end of the query.
  const ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis({
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

  factory ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryLastRunSummaryQueryInsightsResponseQuerySpatialCoverageMaxis(
      partitionKeys: (() { final guardedValue = map['partitionKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tableArn: (() { final guardedValue = map['tableArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
