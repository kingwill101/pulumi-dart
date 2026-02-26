// ignore_for_file: unused_element, unnecessary_cast

class ReservationResourceStatusHealthInfo {
  /// (Output)
  /// The number of reservation blocks that are degraded.
  final int? degradedBlockCount;

  /// (Output)
  /// The health status of the reservation.
  final String? healthStatus;

  /// (Output)
  /// The number of reservation blocks that are healthy.
  final int? healthyBlockCount;

  ReservationResourceStatusHealthInfo({
    this.degradedBlockCount,
    this.healthStatus,
    this.healthyBlockCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final degradedBlockCountValue = degradedBlockCount;
    if (degradedBlockCountValue != null) {
      map['degradedBlockCount'] = degradedBlockCountValue;
    }
    final healthStatusValue = healthStatus;
    if (healthStatusValue != null) {
      map['healthStatus'] = healthStatusValue;
    }
    final healthyBlockCountValue = healthyBlockCount;
    if (healthyBlockCountValue != null) {
      map['healthyBlockCount'] = healthyBlockCountValue;
    }
    return map;
  }

  factory ReservationResourceStatusHealthInfo.fromMap(
      Map<String, dynamic> map) {
    return ReservationResourceStatusHealthInfo(
      degradedBlockCount: map['degradedBlockCount'] == null
          ? null
          : map['degradedBlockCount'] as int,
      healthStatus:
          map['healthStatus'] == null ? null : map['healthStatus'] as String,
      healthyBlockCount: map['healthyBlockCount'] == null
          ? null
          : map['healthyBlockCount'] as int,
    );
  }
}
