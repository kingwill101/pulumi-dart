// ignore_for_file: unused_element, unnecessary_cast

import '../insights_report_config_frequency_options_end_date/insights_report_config_frequency_options_end_date.dart';
import '../insights_report_config_frequency_options_start_date/insights_report_config_frequency_options_start_date.dart';

class InsightsReportConfigFrequencyOptions {
  /// The date to stop generating inventory reports. For example, {"day": 15, "month": 9, "year": 2022}.
  /// Structure is documented below.
  final InsightsReportConfigFrequencyOptionsEndDate endDate;

  /// The frequency in which inventory reports are generated. Values are DAILY or WEEKLY.
  /// Possible values are: `DAILY`, `WEEKLY`.
  final String frequency;

  /// The date to start generating inventory reports. For example, {"day": 15, "month": 8, "year": 2022}.
  /// Structure is documented below.
  final InsightsReportConfigFrequencyOptionsStartDate startDate;

  InsightsReportConfigFrequencyOptions({
    required this.endDate,
    required this.frequency,
    required this.startDate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endDate'] = endDate.toMap();
    map['frequency'] = frequency;
    map['startDate'] = startDate.toMap();
    return map;
  }

  factory InsightsReportConfigFrequencyOptions.fromMap(
      Map<String, dynamic> map) {
    return InsightsReportConfigFrequencyOptions(
      endDate: InsightsReportConfigFrequencyOptionsEndDate.fromMap(
          (map['endDate'] as Map).cast<String, dynamic>()),
      frequency: map['frequency'] as String,
      startDate: InsightsReportConfigFrequencyOptionsStartDate.fromMap(
          (map['startDate'] as Map).cast<String, dynamic>()),
    );
  }
}
