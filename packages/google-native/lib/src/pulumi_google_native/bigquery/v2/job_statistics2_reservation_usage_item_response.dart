// ignore_for_file: unused_element, unnecessary_cast

class JobStatistics2ReservationUsageItemResponse {
  /// [Output only] Reservation name or "unreserved" for on-demand resources usage.
  final String name;

  /// [Output only] Slot-milliseconds the job spent in the given reservation.
  final String slotMs;

  JobStatistics2ReservationUsageItemResponse({
    required this.name,
    required this.slotMs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['slotMs'] = slotMs;
    return map;
  }

  factory JobStatistics2ReservationUsageItemResponse.fromMap(
      Map<String, dynamic> map) {
    return JobStatistics2ReservationUsageItemResponse(
      name: map['name'] as String,
      slotMs: map['slotMs'] as String,
    );
  }
}
