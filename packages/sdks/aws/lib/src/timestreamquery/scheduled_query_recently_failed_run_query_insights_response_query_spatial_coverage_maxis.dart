// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverageMaxis {
  /// Partition key used for partitioning, which can be a default measure_name or a customer defined partition key.
  final pulumi.Input<List<String>>? partitionKeys;
  /// ARN of the table which is queried with the largest time range.
  final pulumi.Input<String>? tableArn;
  /// Maximum duration in nanoseconds between the start and end of the query.
  final pulumi.Input<double>? value;

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
    return <String, dynamic>{
      'partitionKeys': ?partitionKeys,
      'tableArn': ?tableArn,
      'value': ?value,
    };
  }

  factory ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverageMaxis.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRecentlyFailedRunQueryInsightsResponseQuerySpatialCoverageMaxis(
      partitionKeys: map['partitionKeys'] == null ? null : (((map['partitionKeys'] as List).cast<String>()).input()).input(),
      tableArn: map['tableArn'] == null ? null : ((map['tableArn'] as String).input()).input(),
      value: map['value'] == null ? null : ((map['value'] as double).input()).input(),
    );
  }
}

