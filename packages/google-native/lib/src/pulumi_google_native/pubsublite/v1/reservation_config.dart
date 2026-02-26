// ignore_for_file: unused_element, unnecessary_cast

/// The settings for this topic's Reservation usage.
class ReservationConfig {
  /// The Reservation to use for this topic's throughput capacity. Structured like: projects/{project_number}/locations/{location}/reservations/{reservation_id}
  final String? throughputReservation;

  ReservationConfig({
    this.throughputReservation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final throughputReservationValue = throughputReservation;
    if (throughputReservationValue != null) {
      map['throughputReservation'] = throughputReservationValue;
    }
    return map;
  }

  factory ReservationConfig.fromMap(Map<String, dynamic> map) {
    return ReservationConfig(
      throughputReservation: map['throughputReservation'] == null
          ? null
          : map['throughputReservation'] as String,
    );
  }
}
