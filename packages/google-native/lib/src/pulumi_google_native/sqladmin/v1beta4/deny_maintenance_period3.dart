// ignore_for_file: unused_element, unnecessary_cast

/// Deny Maintenance Periods. This specifies a date range during when all CSA rollout will be denied.
class DenyMaintenancePeriod3 {
  /// "deny maintenance period" end date. If the year of the end date is empty, the year of the start date also must be empty. In this case, it means the deny maintenance period recurs every year. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  final String? endDate;

  /// "deny maintenance period" start date. If the year of the start date is empty, the year of the end date also must be empty. In this case, it means the deny maintenance period recurs every year. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  final String? startDate;

  /// Time in UTC when the "deny maintenance period" starts on start_date and ends on end_date. The time is in format: HH:mm:SS, i.e., 00:00:00
  final String? time;

  DenyMaintenancePeriod3({
    this.endDate,
    this.startDate,
    this.time,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endDateValue = endDate;
    if (endDateValue != null) {
      map['endDate'] = endDateValue;
    }
    final startDateValue = startDate;
    if (startDateValue != null) {
      map['startDate'] = startDateValue;
    }
    final timeValue = time;
    if (timeValue != null) {
      map['time'] = timeValue;
    }
    return map;
  }

  factory DenyMaintenancePeriod3.fromMap(Map<String, dynamic> map) {
    return DenyMaintenancePeriod3(
      endDate: map['endDate'] == null ? null : map['endDate'] as String,
      startDate: map['startDate'] == null ? null : map['startDate'] as String,
      time: map['time'] == null ? null : map['time'] as String,
    );
  }
}
