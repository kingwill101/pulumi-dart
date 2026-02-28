// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstancesInstanceSettingDenyMaintenancePeriod {
  /// End date before which maintenance will not take place. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  final String endDate;

  /// Start date after which maintenance will not take place. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  final String startDate;

  /// Time in UTC when the "deny maintenance period" starts on start_date and ends on end_date. The time is in format: HH:mm:SS, i.e., 00:00:00
  final String time;

  /// Creates a new [GetDatabaseInstancesInstanceSettingDenyMaintenancePeriod].
  /// [endDate] End date before which maintenance will not take place. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  /// [startDate] Start date after which maintenance will not take place. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  /// [time] Time in UTC when the "deny maintenance period" starts on start_date and ends on end_date. The time is in format: HH:mm:SS, i.e., 00:00:00
  GetDatabaseInstancesInstanceSettingDenyMaintenancePeriod({
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

  factory GetDatabaseInstancesInstanceSettingDenyMaintenancePeriod.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingDenyMaintenancePeriod(
      endDate: map['endDate'] as String,
      startDate: map['startDate'] as String,
      time: map['time'] as String,
    );
  }
}
