// ignore_for_file: unused_element, unnecessary_cast

class GetReservationBlockHealthInfo {
  /// The number of sub-blocks that are degraded.
  final int degradedSubBlockCount;

  /// The health status of the reservation block.
  final String healthStatus;

  /// The number of sub-blocks that are healthy.
  final int healthySubBlockCount;

  GetReservationBlockHealthInfo({
    required this.degradedSubBlockCount,
    required this.healthStatus,
    required this.healthySubBlockCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['degradedSubBlockCount'] = degradedSubBlockCount;
    map['healthStatus'] = healthStatus;
    map['healthySubBlockCount'] = healthySubBlockCount;
    return map;
  }

  factory GetReservationBlockHealthInfo.fromMap(Map<String, dynamic> map) {
    return GetReservationBlockHealthInfo(
      degradedSubBlockCount: map['degradedSubBlockCount'] as int,
      healthStatus: map['healthStatus'] as String,
      healthySubBlockCount: map['healthySubBlockCount'] as int,
    );
  }
}
