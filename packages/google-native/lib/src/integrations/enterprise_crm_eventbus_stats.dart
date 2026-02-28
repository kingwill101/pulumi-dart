// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_stats_dimensions.dart';

/// Stats for the requested dimensions: QPS, duration, and error/warning rate
class EnterpriseCrmEventbusStats {
  /// Dimensions that these stats have been aggregated on.
  final EnterpriseCrmEventbusStatsDimensions? dimensions;
  /// Average duration in seconds.
  final double? durationInSeconds;
  /// Average error rate.
  final double? errorRate;
  /// Queries per second.
  final double? qps;
  /// Average warning rate.
  final double? warningRate;

  /// Creates a new [EnterpriseCrmEventbusStats].
  /// [dimensions] Dimensions that these stats have been aggregated on.
  /// [durationInSeconds] Average duration in seconds.
  /// [errorRate] Average error rate.
  /// [qps] Queries per second.
  /// [warningRate] Average warning rate.
  EnterpriseCrmEventbusStats({
    this.dimensions,
    this.durationInSeconds,
    this.errorRate,
    this.qps,
    this.warningRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions == null ? null : dimensions!.toMap(),
      'durationInSeconds': ?durationInSeconds,
      'errorRate': ?errorRate,
      'qps': ?qps,
      'warningRate': ?warningRate,
    };
  }

  factory EnterpriseCrmEventbusStats.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusStats(
      dimensions: map['dimensions'] == null ? null : EnterpriseCrmEventbusStatsDimensions.fromMap((map['dimensions'] as Map).cast<String, dynamic>()),
      durationInSeconds: map['durationInSeconds'] == null ? null : map['durationInSeconds'] as double,
      errorRate: map['errorRate'] == null ? null : map['errorRate'] as double,
      qps: map['qps'] == null ? null : map['qps'] as double,
      warningRate: map['warningRate'] == null ? null : map['warningRate'] as double,
    );
  }
}

