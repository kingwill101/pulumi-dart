// ignore_for_file: unused_element, unnecessary_cast

class QueueReservationPlanSettings {
  /// The length of the term of your reserved queue pricing plan commitment. Valid value is `ONE_YEAR`.
  final String commitment;

  /// Specifies whether the term of your reserved queue pricing plan. Valid values are `AUTO_RENEW` or `EXPIRE`.
  final String renewalType;

  /// Specifies the number of reserved transcode slots (RTS) for queue.
  final int reservedSlots;

  QueueReservationPlanSettings({
    required this.commitment,
    required this.renewalType,
    required this.reservedSlots,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['commitment'] = commitment;
    map['renewalType'] = renewalType;
    map['reservedSlots'] = reservedSlots;
    return map;
  }

  factory QueueReservationPlanSettings.fromMap(Map<String, dynamic> map) {
    return QueueReservationPlanSettings(
      commitment: map['commitment'] as String,
      renewalType: map['renewalType'] as String,
      reservedSlots: map['reservedSlots'] as int,
    );
  }
}
