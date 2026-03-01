// ignore_for_file: unused_element, unnecessary_cast

class Uint128Response {
  final String high;
  final String low;

  /// Creates a new [Uint128Response].
  /// [high] Required.
  /// [low] Required.
  Uint128Response({required this.high, required this.low});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'high': high, 'low': low};
  }

  factory Uint128Response.fromMap(Map<String, dynamic> map) {
    return Uint128Response(
      high: map['high'] as String,
      low: map['low'] as String,
    );
  }
}
