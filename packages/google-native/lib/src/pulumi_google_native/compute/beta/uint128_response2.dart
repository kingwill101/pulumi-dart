// ignore_for_file: unused_element, unnecessary_cast

class Uint128Response2 {
  final String high;
  final String low;

  Uint128Response2({
    required this.high,
    required this.low,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['high'] = high;
    map['low'] = low;
    return map;
  }

  factory Uint128Response2.fromMap(Map<String, dynamic> map) {
    return Uint128Response2(
      high: map['high'] as String,
      low: map['low'] as String,
    );
  }
}
