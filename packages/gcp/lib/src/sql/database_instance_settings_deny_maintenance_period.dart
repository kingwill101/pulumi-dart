// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceSettingsDenyMaintenancePeriod {
  /// "deny maintenance period" end date. If the year of the end date is empty, the year of the start date also must be empty. In this case, it means the no maintenance interval recurs every year. The date is in format yyyy-m-dd (the month is without leading zeros)i.e., 2020-1-01, or 2020-11-01, or mm-dd, i.e., 11-01
  final String endDate;

  /// "deny maintenance period" start date. If the year of the start date is empty, the year of the end date also must be empty. In this case, it means the deny maintenance period recurs every year. The date is in format yyyy-m-dd (the month is without leading zeros)i.e., 2020-1-01, or 2020-11-01, or mm-dd, i.e., 11-01
  final String startDate;

  /// Time in UTC when the "deny maintenance period" starts on startDate and ends on endDate. The time is in format: HH:mm:SS, i.e., 00:00:00
  final String time;

  /// Creates a new [DatabaseInstanceSettingsDenyMaintenancePeriod].
  /// [endDate] "deny maintenance period" end date. If the year of the end date is empty, the year of the start date also must be empty. In this case, it means the no maintenance interval recurs every year. The date is in format yyyy-m-dd (the month is without leading zeros)i.e., 2020-1-01, or 2020-11-01, or mm-dd, i.e., 11-01
  /// [startDate] "deny maintenance period" start date. If the year of the start date is empty, the year of the end date also must be empty. In this case, it means the deny maintenance period recurs every year. The date is in format yyyy-m-dd (the month is without leading zeros)i.e., 2020-1-01, or 2020-11-01, or mm-dd, i.e., 11-01
  /// [time] Time in UTC when the "deny maintenance period" starts on startDate and ends on endDate. The time is in format: HH:mm:SS, i.e., 00:00:00
  DatabaseInstanceSettingsDenyMaintenancePeriod({
    required this.endDate,
    required this.startDate,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endDate'] = endDate;
    map['startDate'] = startDate;
    map['time'] = time;
    return map;
  }

  factory DatabaseInstanceSettingsDenyMaintenancePeriod.fromMap(
      Map<String, dynamic> map) {
    return DatabaseInstanceSettingsDenyMaintenancePeriod(
      endDate: map['endDate'] as String,
      startDate: map['startDate'] as String,
      time: map['time'] as String,
    );
  }
}
