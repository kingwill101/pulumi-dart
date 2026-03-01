// ignore_for_file: unused_element, unnecessary_cast

import 'basic_sli_response.dart';
import 'request_based_sli_response.dart';

/// A PerformanceThreshold is used when each window is good when that window has a sufficiently high performance.
class PerformanceThresholdResponse {
  /// BasicSli to evaluate to judge window quality.
  final BasicSliResponse basicSliPerformance;

  /// RequestBasedSli to evaluate to judge window quality.
  final RequestBasedSliResponse performance;

  /// If window performance >= threshold, the window is counted as good.
  final double threshold;

  /// Creates a new [PerformanceThresholdResponse].
  /// [basicSliPerformance] BasicSli to evaluate to judge window quality.
  /// [performance] RequestBasedSli to evaluate to judge window quality.
  /// [threshold] If window performance >= threshold, the window is counted as good.
  PerformanceThresholdResponse({
    required this.basicSliPerformance,
    required this.performance,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicSliPerformance': basicSliPerformance.toMap(),
      'performance': performance.toMap(),
      'threshold': threshold,
    };
  }

  factory PerformanceThresholdResponse.fromMap(Map<String, dynamic> map) {
    return PerformanceThresholdResponse(
      basicSliPerformance: BasicSliResponse.fromMap(
        (map['basicSliPerformance'] as Map).cast<String, dynamic>(),
      ),
      performance: RequestBasedSliResponse.fromMap(
        (map['performance'] as Map).cast<String, dynamic>(),
      ),
      threshold: map['threshold'] as double,
    );
  }
}
