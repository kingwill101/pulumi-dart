/// The time covered by a budget. Tracking of the amount will be reset based on the time grain. BillingMonth, BillingQuarter, and BillingAnnual are only supported by WD customers
enum TimeGrainType {
  monthly("Monthly"),
  quarterly("Quarterly"),
  annually("Annually"),
  billingMonth("BillingMonth"),
  billingQuarter("BillingQuarter"),
  billingAnnual("BillingAnnual");

  const TimeGrainType(this.wireValue);
  final String wireValue;

  static TimeGrainType fromValue(String value) {
    for (final item in TimeGrainType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TimeGrainType value: $value');
  }
}
