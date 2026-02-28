// ignore_for_file: unused_element, unnecessary_cast

import 'google_type_date.dart';

/// All date times begin at 12 AM US and Canadian Pacific Time (UTC-8).
class GoogleCloudBillingBudgetsV1CustomPeriod {
  /// Optional. The end date of the time period. Budgets with elapsed end date won't be processed. If unset, specifies to track all usage incurred since the start_date.
  final GoogleTypeDate? endDate;

  /// The start date must be after January 1, 2017.
  final GoogleTypeDate startDate;

  /// Creates a new [GoogleCloudBillingBudgetsV1CustomPeriod].
  /// [endDate] Optional. The end date of the time period. Budgets with elapsed end date won't be processed. If unset, specifies to track all usage incurred since the start_date.
  /// [startDate] The start date must be after January 1, 2017.
  GoogleCloudBillingBudgetsV1CustomPeriod({
    this.endDate,
    required this.startDate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endDateValue = endDate;
    if (endDateValue != null) {
      map['endDate'] = endDateValue.toMap();
    }
    map['startDate'] = startDate.toMap();
    return map;
  }

  factory GoogleCloudBillingBudgetsV1CustomPeriod.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBillingBudgetsV1CustomPeriod(
      endDate: map['endDate'] == null
          ? null
          : GoogleTypeDate.fromMap(
              (map['endDate'] as Map).cast<String, dynamic>()),
      startDate: GoogleTypeDate.fromMap(
          (map['startDate'] as Map).cast<String, dynamic>()),
    );
  }
}
