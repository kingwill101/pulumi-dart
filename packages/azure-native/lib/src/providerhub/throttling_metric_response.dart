// ignore_for_file: unused_element, unnecessary_cast


class ThrottlingMetricResponse {
  /// The interval.
  final String? interval;
  /// The limit.
  final double limit;
  /// The throttling metric type
  final String type;

  /// Creates a new [ThrottlingMetricResponse].
  /// [interval] The interval.
  /// [limit] The limit.
  /// [type] The throttling metric type
  ThrottlingMetricResponse({
    this.interval,
    required this.limit,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': ?interval,
      'limit': limit,
      'type': type,
    };
  }

  factory ThrottlingMetricResponse.fromMap(Map<String, dynamic> map) {
    return ThrottlingMetricResponse(
      interval: map['interval'] == null ? null : map['interval'] as String,
      limit: map['limit'] as double,
      type: map['type'] as String,
    );
  }
}

