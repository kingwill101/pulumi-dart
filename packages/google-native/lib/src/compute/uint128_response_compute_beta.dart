// ignore_for_file: unused_element, unnecessary_cast

class Uint128ResponseComputeBeta {
  final String high;
  final String low;

  /// Creates a new [Uint128ResponseComputeBeta].
  /// [high] Required.
  /// [low] Required.
  Uint128ResponseComputeBeta({
    required this.high,
    required this.low,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['high'] = high;
    map['low'] = low;
    return map;
  }

  factory Uint128ResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return Uint128ResponseComputeBeta(
      high: map['high'] as String,
      low: map['low'] as String,
    );
  }
}
