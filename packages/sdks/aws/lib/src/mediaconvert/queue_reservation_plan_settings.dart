// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueReservationPlanSettings {
  /// Length of the term of your reserved queue pricing plan commitment. Valid value is `ONE_YEAR`.
  final pulumi.Input<String> commitment;
  /// Renewal type of your reserved queue pricing plan. Valid values are `AUTO_RENEW` or `EXPIRE`.
  final pulumi.Input<String> renewalType;
  /// Number of reserved transcode slots (RTS) for queue.
  final pulumi.Input<int> reservedSlots;

  /// Creates a new [QueueReservationPlanSettings].
  /// [commitment] Length of the term of your reserved queue pricing plan commitment. Valid value is `ONE_YEAR`.
  /// [renewalType] Renewal type of your reserved queue pricing plan. Valid values are `AUTO_RENEW` or `EXPIRE`.
  /// [reservedSlots] Number of reserved transcode slots (RTS) for queue.
  const QueueReservationPlanSettings({
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
      commitment: pulumi.Input.fromValue(map['commitment'] as String),
      renewalType: pulumi.Input.fromValue(map['renewalType'] as String),
      reservedSlots: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['reservedSlots'])),
    );
  }
}
