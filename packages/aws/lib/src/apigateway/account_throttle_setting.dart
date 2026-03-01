// ignore_for_file: unused_element, unnecessary_cast

class AccountThrottleSetting {
  /// Absolute maximum number of times API Gateway allows the API to be called per second (RPS).
  final int burstLimit;

  /// Number of times API Gateway allows the API to be called per second on average (RPS).
  final double rateLimit;

  /// Creates a new [AccountThrottleSetting].
  /// [burstLimit] Absolute maximum number of times API Gateway allows the API to be called per second (RPS).
  /// [rateLimit] Number of times API Gateway allows the API to be called per second on average (RPS).
  AccountThrottleSetting({required this.burstLimit, required this.rateLimit});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'burstLimit': burstLimit, 'rateLimit': rateLimit};
  }

  factory AccountThrottleSetting.fromMap(Map<String, dynamic> map) {
    return AccountThrottleSetting(
      burstLimit: map['burstLimit'] as int,
      rateLimit: map['rateLimit'] as double,
    );
  }
}
