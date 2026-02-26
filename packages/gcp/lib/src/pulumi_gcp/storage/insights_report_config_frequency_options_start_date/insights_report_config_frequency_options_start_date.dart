// ignore_for_file: unused_element, unnecessary_cast

class InsightsReportConfigFrequencyOptionsStartDate {
  /// The day of the month to start generating inventory reports.
  final int day;

  /// The month to start generating inventory reports.
  final int month;

  /// The year to start generating inventory reports
  final int year;

  InsightsReportConfigFrequencyOptionsStartDate({
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

  factory InsightsReportConfigFrequencyOptionsStartDate.fromMap(
      Map<String, dynamic> map) {
    return InsightsReportConfigFrequencyOptionsStartDate(
      day: map['day'] as int,
      month: map['month'] as int,
      year: map['year'] as int,
    );
  }
}
