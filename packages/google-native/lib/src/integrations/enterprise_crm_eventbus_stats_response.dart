// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_stats_dimensions_response.dart';

/// Stats for the requested dimensions: QPS, duration, and error/warning rate
class EnterpriseCrmEventbusStatsResponse {
  /// Dimensions that these stats have been aggregated on.
  final EnterpriseCrmEventbusStatsDimensionsResponse dimensions;

  /// Average duration in seconds.
  final double durationInSeconds;

  /// Average error rate.
  final double errorRate;

  /// Queries per second.
  final double qps;

  /// Average warning rate.
  final double warningRate;

  /// Creates a new [EnterpriseCrmEventbusStatsResponse].
  /// [dimensions] Dimensions that these stats have been aggregated on.
  /// [durationInSeconds] Average duration in seconds.
  /// [errorRate] Average error rate.
  /// [qps] Queries per second.
  /// [warningRate] Average warning rate.
  EnterpriseCrmEventbusStatsResponse({
    required this.dimensions,
    required this.durationInSeconds,
    required this.errorRate,
    required this.qps,
    required this.warningRate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dimensions'] = dimensions.toMap();
    map['durationInSeconds'] = durationInSeconds;
    map['errorRate'] = errorRate;
    map['qps'] = qps;
    map['warningRate'] = warningRate;
    return map;
  }

  factory EnterpriseCrmEventbusStatsResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusStatsResponse(
      dimensions: EnterpriseCrmEventbusStatsDimensionsResponse.fromMap(
          (map['dimensions'] as Map).cast<String, dynamic>()),
      durationInSeconds: map['durationInSeconds'] as double,
      errorRate: map['errorRate'] as double,
      qps: map['qps'] as double,
      warningRate: map['warningRate'] as double,
    );
  }
}
