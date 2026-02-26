// ignore_for_file: unused_element, unnecessary_cast

class TransferJobScheduleScheduleEndDate {
  /// Day of month. Must be from 1 to 31 and valid for the year and month.
  final int day;

  /// Month of year. Must be from 1 to 12.
  final int month;

  /// Year of date. Must be from 1 to 9999.
  final int year;

  TransferJobScheduleScheduleEndDate({
    required this.day,
    required this.month,
    required this.year,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['day'] = day;
    map['month'] = month;
    map['year'] = year;
    return map;
  }

  factory TransferJobScheduleScheduleEndDate.fromMap(Map<String, dynamic> map) {
    return TransferJobScheduleScheduleEndDate(
      day: map['day'] as int,
      month: map['month'] as int,
      year: map['year'] as int,
    );
  }
}
