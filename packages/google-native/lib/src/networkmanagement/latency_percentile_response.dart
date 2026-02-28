// ignore_for_file: unused_element, unnecessary_cast

/// Latency percentile rank and value.
class LatencyPercentileResponse {
  /// percent-th percentile of latency observed, in microseconds. Fraction of percent/100 of samples have latency lower or equal to the value of this field.
  final String latencyMicros;

  /// Percentage of samples this data point applies to.
  final int percent;

  /// Creates a new [LatencyPercentileResponse].
  /// [latencyMicros] percent-th percentile of latency observed, in microseconds. Fraction of percent/100 of samples have latency lower or equal to the value of this field.
  /// [percent] Percentage of samples this data point applies to.
  LatencyPercentileResponse({
    required this.latencyMicros,
    required this.percent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['latencyMicros'] = latencyMicros;
    map['percent'] = percent;
    return map;
  }

  factory LatencyPercentileResponse.fromMap(Map<String, dynamic> map) {
    return LatencyPercentileResponse(
      latencyMicros: map['latencyMicros'] as String,
      percent: map['percent'] as int,
    );
  }
}
