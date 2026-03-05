// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Progress metrics definition
class ProgressMetricsResponse {
  /// The completed datapoint count.
  final pulumi.Input<double> completedDatapointCount;
  /// The time of last successful incremental data refresh in UTC.
  final pulumi.Input<String> incrementalDataLastRefreshDateTime;
  /// The skipped datapoint count.
  final pulumi.Input<double> skippedDatapointCount;
  /// The total datapoint count.
  final pulumi.Input<double> totalDatapointCount;

  /// Creates a new [ProgressMetricsResponse].
  /// [completedDatapointCount] The completed datapoint count.
  /// [incrementalDataLastRefreshDateTime] The time of last successful incremental data refresh in UTC.
  /// [skippedDatapointCount] The skipped datapoint count.
  /// [totalDatapointCount] The total datapoint count.
  ProgressMetricsResponse({
    required this.completedDatapointCount,
    required this.incrementalDataLastRefreshDateTime,
    required this.skippedDatapointCount,
    required this.totalDatapointCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completedDatapointCount': completedDatapointCount,
      'incrementalDataLastRefreshDateTime': incrementalDataLastRefreshDateTime,
      'skippedDatapointCount': skippedDatapointCount,
      'totalDatapointCount': totalDatapointCount,
    };
  }

  factory ProgressMetricsResponse.fromMap(Map<String, dynamic> map) {
    return ProgressMetricsResponse(
      completedDatapointCount: pulumi.Input.fromValue(map['completedDatapointCount'] as double),
      incrementalDataLastRefreshDateTime: pulumi.Input.fromValue(map['incrementalDataLastRefreshDateTime'] as String),
      skippedDatapointCount: pulumi.Input.fromValue(map['skippedDatapointCount'] as double),
      totalDatapointCount: pulumi.Input.fromValue(map['totalDatapointCount'] as double),
    );
  }
}

