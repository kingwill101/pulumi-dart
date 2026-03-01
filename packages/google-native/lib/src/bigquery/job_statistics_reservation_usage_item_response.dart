// ignore_for_file: unused_element, unnecessary_cast

class JobStatisticsReservationUsageItemResponse {
  /// Reservation name or "unreserved" for on-demand resources usage.
  final String name;

  /// Slot-milliseconds the job spent in the given reservation.
  final String slotMs;

  /// Creates a new [JobStatisticsReservationUsageItemResponse].
  /// [name] Reservation name or "unreserved" for on-demand resources usage.
  /// [slotMs] Slot-milliseconds the job spent in the given reservation.
  JobStatisticsReservationUsageItemResponse({
    required this.name,
    required this.slotMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'slotMs': slotMs};
  }

  factory JobStatisticsReservationUsageItemResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return JobStatisticsReservationUsageItemResponse(
      name: map['name'] as String,
      slotMs: map['slotMs'] as String,
    );
  }
}
