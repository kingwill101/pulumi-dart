// ignore_for_file: unused_element, unnecessary_cast

class GetReservationResourceStatusHealthInfo {
  /// The number of reservation blocks that are degraded.
  final int degradedBlockCount;

  /// The health status of the reservation.
  final String healthStatus;

  /// The number of reservation blocks that are healthy.
  final int healthyBlockCount;

  /// Creates a new [GetReservationResourceStatusHealthInfo].
  /// [degradedBlockCount] The number of reservation blocks that are degraded.
  /// [healthStatus] The health status of the reservation.
  /// [healthyBlockCount] The number of reservation blocks that are healthy.
  GetReservationResourceStatusHealthInfo({
    required this.degradedBlockCount,
    required this.healthStatus,
    required this.healthyBlockCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['degradedBlockCount'] = degradedBlockCount;
    map['healthStatus'] = healthStatus;
    map['healthyBlockCount'] = healthyBlockCount;
    return map;
  }

  factory GetReservationResourceStatusHealthInfo.fromMap(
      Map<String, dynamic> map) {
    return GetReservationResourceStatusHealthInfo(
      degradedBlockCount: map['degradedBlockCount'] as int,
      healthStatus: map['healthStatus'] as String,
      healthyBlockCount: map['healthyBlockCount'] as int,
    );
  }
}
