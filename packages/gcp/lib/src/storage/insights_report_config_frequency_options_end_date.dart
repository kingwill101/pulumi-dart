// ignore_for_file: unused_element, unnecessary_cast

class InsightsReportConfigFrequencyOptionsEndDate {
  /// The day of the month to stop generating inventory reports.
  final int day;

  /// The month to stop generating inventory reports.
  final int month;

  /// The year to stop generating inventory reports
  final int year;

  /// Creates a new [InsightsReportConfigFrequencyOptionsEndDate].
  /// [day] The day of the month to stop generating inventory reports.
  /// [month] The month to stop generating inventory reports.
  /// [year] The year to stop generating inventory reports
  InsightsReportConfigFrequencyOptionsEndDate({
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

  factory InsightsReportConfigFrequencyOptionsEndDate.fromMap(
      Map<String, dynamic> map) {
    return InsightsReportConfigFrequencyOptionsEndDate(
      day: map['day'] as int,
      month: map['month'] as int,
      year: map['year'] as int,
    );
  }
}
