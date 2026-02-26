// ignore_for_file: unused_element, unnecessary_cast

import 'google_type_date_response2.dart';

/// All date times begin at 12 AM US and Canadian Pacific Time (UTC-8).
class GoogleCloudBillingBudgetsV1beta1CustomPeriodResponse {
  /// Optional. The end date of the time period. Budgets with elapsed end date won't be processed. If unset, specifies to track all usage incurred since the start_date.
  final GoogleTypeDateResponse2 endDate;

  /// The start date must be after January 1, 2017.
  final GoogleTypeDateResponse2 startDate;

  GoogleCloudBillingBudgetsV1beta1CustomPeriodResponse({
    required this.endDate,
    required this.startDate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endDate'] = endDate.toMap();
    map['startDate'] = startDate.toMap();
    return map;
  }

  factory GoogleCloudBillingBudgetsV1beta1CustomPeriodResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBillingBudgetsV1beta1CustomPeriodResponse(
      endDate: GoogleTypeDateResponse2.fromMap(
          (map['endDate'] as Map).cast<String, dynamic>()),
      startDate: GoogleTypeDateResponse2.fromMap(
          (map['startDate'] as Map).cast<String, dynamic>()),
    );
  }
}
