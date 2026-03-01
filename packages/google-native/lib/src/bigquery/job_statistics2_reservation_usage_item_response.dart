// ignore_for_file: unused_element, unnecessary_cast

class JobStatistics2ReservationUsageItemResponse {
  /// [Output only] Reservation name or "unreserved" for on-demand resources usage.
  final String name;

  /// [Output only] Slot-milliseconds the job spent in the given reservation.
  final String slotMs;

  /// Creates a new [JobStatistics2ReservationUsageItemResponse].
  /// [name] [Output only] Reservation name or "unreserved" for on-demand resources usage.
  /// [slotMs] [Output only] Slot-milliseconds the job spent in the given reservation.
  JobStatistics2ReservationUsageItemResponse({
    required this.name,
    required this.slotMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'slotMs': slotMs};
  }

  factory JobStatistics2ReservationUsageItemResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return JobStatistics2ReservationUsageItemResponse(
      name: map['name'] as String,
      slotMs: map['slotMs'] as String,
    );
  }
}
