// ignore_for_file: unused_element, unnecessary_cast


class InsightsReportConfigFrequencyOptionsStartDate {
  /// The day of the month to start generating inventory reports.
  final int day;
  /// The month to start generating inventory reports.
  final int month;
  /// The year to start generating inventory reports
  final int year;

  /// Creates a new [InsightsReportConfigFrequencyOptionsStartDate].
  /// [day] The day of the month to start generating inventory reports.
  /// [month] The month to start generating inventory reports.
  /// [year] The year to start generating inventory reports
  InsightsReportConfigFrequencyOptionsStartDate({
    required this.day,
    required this.month,
    required this.year,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'month': month,
      'year': year,
    };
  }

  factory InsightsReportConfigFrequencyOptionsStartDate.fromMap(Map<String, dynamic> map) {
    return InsightsReportConfigFrequencyOptionsStartDate(
      day: map['day'] as int,
      month: map['month'] as int,
      year: map['year'] as int,
    );
  }
}

