// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstanceSettingDenyMaintenancePeriod {
  /// End date before which maintenance will not take place. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  final String endDate;

  /// Start date after which maintenance will not take place. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  final String startDate;

  /// Time in UTC when the "deny maintenance period" starts on start_date and ends on end_date. The time is in format: HH:mm:SS, i.e., 00:00:00
  final String time;

  /// Creates a new [GetDatabaseInstanceSettingDenyMaintenancePeriod].
  /// [endDate] End date before which maintenance will not take place. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  /// [startDate] Start date after which maintenance will not take place. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  /// [time] Time in UTC when the "deny maintenance period" starts on start_date and ends on end_date. The time is in format: HH:mm:SS, i.e., 00:00:00
  GetDatabaseInstanceSettingDenyMaintenancePeriod({
    required this.endDate,
    required this.startDate,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': endDate,
      'startDate': startDate,
      'time': time,
    };
  }

  factory GetDatabaseInstanceSettingDenyMaintenancePeriod.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseInstanceSettingDenyMaintenancePeriod(
      endDate: map['endDate'] as String,
      startDate: map['startDate'] as String,
      time: map['time'] as String,
    );
  }
}
