/// The time covered by a budget. Tracking of the amount will be reset based on the time grain.
///
/// Supported for CategoryType(s): Cost, ReservationUtilization.
///
/// Supported timeGrainTypes for **CategoryType: Cost**
///
/// - Monthly
/// - Quarterly
/// - Annually
/// - BillingMonth*
/// - BillingQuarter*
/// - BillingAnnual*
///
/// *only supported for Web Direct customers.
///
/// Supported timeGrainTypes for **CategoryType: ReservationUtilization**
/// - Last7Days
/// - Last30Days
///
/// Required for CategoryType(s): Cost, ReservationUtilization.
enum TimeGrainType {
  monthly("Monthly"),
  quarterly("Quarterly"),
  annually("Annually"),
  billingMonth("BillingMonth"),
  billingQuarter("BillingQuarter"),
  billingAnnual("BillingAnnual"),
  last7Days("Last7Days"),
  last30Days("Last30Days");

  const TimeGrainType(this.value);
  final String value;

  static TimeGrainType fromValue(String value) {
    for (final item in TimeGrainType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TimeGrainType value: $value');
  }
}

