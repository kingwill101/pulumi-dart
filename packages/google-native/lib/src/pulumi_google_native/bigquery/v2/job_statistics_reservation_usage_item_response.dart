// ignore_for_file: unused_element, unnecessary_cast

class JobStatisticsReservationUsageItemResponse {
  /// Reservation name or "unreserved" for on-demand resources usage.
  final String name;

  /// Slot-milliseconds the job spent in the given reservation.
  final String slotMs;

  JobStatisticsReservationUsageItemResponse({
    required this.name,
    required this.slotMs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['slotMs'] = slotMs;
    return map;
  }

  factory JobStatisticsReservationUsageItemResponse.fromMap(
      Map<String, dynamic> map) {
    return JobStatisticsReservationUsageItemResponse(
      name: map['name'] as String,
      slotMs: map['slotMs'] as String,
    );
  }
}
