// ignore_for_file: unused_element, unnecessary_cast

class Uint128ResponseComputeV1 {
  final String high;
  final String low;

  Uint128ResponseComputeV1({
    required this.high,
    required this.low,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['high'] = high;
    map['low'] = low;
    return map;
  }

  factory Uint128ResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return Uint128ResponseComputeV1(
      high: map['high'] as String,
      low: map['low'] as String,
    );
  }
}
