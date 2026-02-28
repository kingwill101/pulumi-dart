// ignore_for_file: unused_element, unnecessary_cast

class GetReservationSubBlockHealthInfo {
  /// The number of degraded hosts in the reservation sub-block.
  final int degradedHostCount;

  /// The number of degraded infrastructure (e.g. NVLink domain) in the reservation sub-block.
  final int degradedInfraCount;

  /// The health status of the reservation sub-block.
  final String healthStatus;

  /// The number of healthy hosts in the reservation sub-block.
  final int healthyHostCount;

  /// The number of healthy infrastructure (e.g. NVLink domain) in the reservation sub-block.
  final int healthyInfraCount;

  /// Creates a new [GetReservationSubBlockHealthInfo].
  /// [degradedHostCount] The number of degraded hosts in the reservation sub-block.
  /// [degradedInfraCount] The number of degraded infrastructure (e.g. NVLink domain) in the reservation sub-block.
  /// [healthStatus] The health status of the reservation sub-block.
  /// [healthyHostCount] The number of healthy hosts in the reservation sub-block.
  /// [healthyInfraCount] The number of healthy infrastructure (e.g. NVLink domain) in the reservation sub-block.
  GetReservationSubBlockHealthInfo({
    required this.degradedHostCount,
    required this.degradedInfraCount,
    required this.healthStatus,
    required this.healthyHostCount,
    required this.healthyInfraCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['degradedHostCount'] = degradedHostCount;
    map['degradedInfraCount'] = degradedInfraCount;
    map['healthStatus'] = healthStatus;
    map['healthyHostCount'] = healthyHostCount;
    map['healthyInfraCount'] = healthyInfraCount;
    return map;
  }

  factory GetReservationSubBlockHealthInfo.fromMap(Map<String, dynamic> map) {
    return GetReservationSubBlockHealthInfo(
      degradedHostCount: map['degradedHostCount'] as int,
      degradedInfraCount: map['degradedInfraCount'] as int,
      healthStatus: map['healthStatus'] as String,
      healthyHostCount: map['healthyHostCount'] as int,
      healthyInfraCount: map['healthyInfraCount'] as int,
    );
  }
}
