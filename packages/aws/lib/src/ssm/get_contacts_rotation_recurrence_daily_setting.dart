// ignore_for_file: unused_element, unnecessary_cast

class GetContactsRotationRecurrenceDailySetting {
  final int hourOfDay;
  final int minuteOfHour;

  /// Creates a new [GetContactsRotationRecurrenceDailySetting].
  /// [hourOfDay] Required.
  /// [minuteOfHour] Required.
  GetContactsRotationRecurrenceDailySetting({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourOfDay': hourOfDay,
      'minuteOfHour': minuteOfHour,
    };
  }

  factory GetContactsRotationRecurrenceDailySetting.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetContactsRotationRecurrenceDailySetting(
      hourOfDay: map['hourOfDay'] as int,
      minuteOfHour: map['minuteOfHour'] as int,
    );
  }
}
