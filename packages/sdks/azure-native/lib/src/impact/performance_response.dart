// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expected_value_range_response.dart';

/// Details about impacted performance metrics. Applicable for performance related impact
class PerformanceResponse {
  /// Observed value for the metric
  final pulumi.Input<double>? actual;
  /// Threshold value for the metric
  final pulumi.Input<double>? expected;
  /// Max and Min Threshold values for the metric
  final pulumi.Input<ExpectedValueRangeResponse>? expectedValueRange;
  /// Name of the Metric examples:  Disk, IOPs, CPU, GPU, Memory, details can be found from /impactCategories API
  final pulumi.Input<String>? metricName;
  /// Unit of the metric ex: Bytes, Percentage, Count, Seconds, Milliseconds, Bytes/Second, Count/Second, etc.., Other
  final pulumi.Input<String>? unit;

  /// Creates a new [PerformanceResponse].
  /// [actual] Observed value for the metric
  /// [expected] Threshold value for the metric
  /// [expectedValueRange] Max and Min Threshold values for the metric
  /// [metricName] Name of the Metric examples:  Disk, IOPs, CPU, GPU, Memory, details can be found from /impactCategories API
  /// [unit] Unit of the metric ex: Bytes, Percentage, Count, Seconds, Milliseconds, Bytes/Second, Count/Second, etc.., Other
  PerformanceResponse({
    this.actual,
    this.expected,
    this.expectedValueRange,
    this.metricName,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actual': ?actual,
      'expected': ?expected,
      'expectedValueRange': ?pulumi.Input.mapOptionalInputValue<ExpectedValueRangeResponse, Map<String, dynamic>>(expectedValueRange, (value) => value.toMap()),
      'metricName': ?metricName,
      'unit': ?unit,
    };
  }

  factory PerformanceResponse.fromMap(Map<String, dynamic> map) {
    return PerformanceResponse(
      actual: map['actual'] == null ? null : (map['actual']! as double).input(),
      expected: map['expected'] == null ? null : (map['expected']! as double).input(),
      expectedValueRange: map['expectedValueRange'] == null ? null : (ExpectedValueRangeResponse.fromMap((map['expectedValueRange']! as Map).cast<String, dynamic>())).input(),
      metricName: map['metricName'] == null ? null : (map['metricName']! as String).input(),
      unit: map['unit'] == null ? null : (map['unit']! as String).input(),
    );
  }
}

