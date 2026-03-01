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

  /// Creates a new [ReservationResourceStatusHealthInfo].
  /// [degradedBlockCount] (Output)
  /// [healthStatus] (Output)
  /// [healthyBlockCount] (Output)
  ReservationResourceStatusHealthInfo({
    this.degradedBlockCount,
    this.healthStatus,
    this.healthyBlockCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'degradedBlockCount': ?degradedBlockCount,
      'healthStatus': ?healthStatus,
      'healthyBlockCount': ?healthyBlockCount,
    };
  }

  factory ReservationResourceStatusHealthInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReservationResourceStatusHealthInfo(
      degradedBlockCount: map['degradedBlockCount'] == null
          ? null
          : map['degradedBlockCount'] as int,
      healthStatus: map['healthStatus'] == null
          ? null
          : map['healthStatus'] as String,
      healthyBlockCount: map['healthyBlockCount'] == null
          ? null
          : map['healthyBlockCount'] as int,
    );
  }
}
