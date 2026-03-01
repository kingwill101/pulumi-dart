// ignore_for_file: unused_element, unnecessary_cast

class QueueReservationPlanSettings {
  /// The length of the term of your reserved queue pricing plan commitment. Valid value is `ONE_YEAR`.
  final String commitment;

  /// Specifies whether the term of your reserved queue pricing plan. Valid values are `AUTO_RENEW` or `EXPIRE`.
  final String renewalType;

  /// Specifies the number of reserved transcode slots (RTS) for queue.
  final int reservedSlots;

  /// Creates a new [QueueReservationPlanSettings].
  /// [commitment] The length of the term of your reserved queue pricing plan commitment. Valid value is `ONE_YEAR`.
  /// [renewalType] Specifies whether the term of your reserved queue pricing plan. Valid values are `AUTO_RENEW` or `EXPIRE`.
  /// [reservedSlots] Specifies the number of reserved transcode slots (RTS) for queue.
  QueueReservationPlanSettings({
    required this.commitment,
    required this.renewalType,
    required this.reservedSlots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitment': commitment,
      'renewalType': renewalType,
      'reservedSlots': reservedSlots,
    };
  }

  factory QueueReservationPlanSettings.fromMap(Map<String, dynamic> map) {
    return QueueReservationPlanSettings(
      commitment: map['commitment'] as String,
      renewalType: map['renewalType'] as String,
      reservedSlots: map['reservedSlots'] as int,
    );
  }
}
