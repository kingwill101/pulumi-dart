// ignore_for_file: unused_element, unnecessary_cast

class AccountThrottleSetting {
  /// Absolute maximum number of times API Gateway allows the API to be called per second (RPS).
  final int burstLimit;

  /// Number of times API Gateway allows the API to be called per second on average (RPS).
  final double rateLimit;

  AccountThrottleSetting({
    required this.burstLimit,
    required this.rateLimit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['burstLimit'] = burstLimit;
    map['rateLimit'] = rateLimit;
    return map;
  }

  factory AccountThrottleSetting.fromMap(Map<String, dynamic> map) {
    return AccountThrottleSetting(
      burstLimit: map['burstLimit'] as int,
      rateLimit: map['rateLimit'] as double,
    );
  }
}
