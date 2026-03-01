// ignore_for_file: unused_element, unnecessary_cast


/// The Capacity Reservation properties.
class CapacityReservationPropertiesResponse {
  /// The last time Sku was updated.
  final String lastSkuUpdate;
  /// Minimum CapacityReservation value in Gigabytes.
  final double minCapacity;

  /// Creates a new [CapacityReservationPropertiesResponse].
  /// [lastSkuUpdate] The last time Sku was updated.
  /// [minCapacity] Minimum CapacityReservation value in Gigabytes.
  CapacityReservationPropertiesResponse({
    required this.lastSkuUpdate,
    required this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastSkuUpdate': lastSkuUpdate,
      'minCapacity': minCapacity,
    };
  }

  factory CapacityReservationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CapacityReservationPropertiesResponse(
      lastSkuUpdate: map['lastSkuUpdate'] as String,
      minCapacity: map['minCapacity'] as double,
    );
  }
}

