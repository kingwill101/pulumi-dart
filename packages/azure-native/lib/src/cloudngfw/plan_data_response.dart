// ignore_for_file: unused_element, unnecessary_cast


/// Billing plan information.
class PlanDataResponse {
  /// different billing cycles like MONTHLY/WEEKLY
  final String billingCycle;
  /// date when plan was applied
  final String effectiveDate;
  /// plan id as published by Liftr.PAN
  final String planId;
  /// different usage type like PAYG/COMMITTED
  final String? usageType;

  /// Creates a new [PlanDataResponse].
  /// [billingCycle] different billing cycles like MONTHLY/WEEKLY
  /// [effectiveDate] date when plan was applied
  /// [planId] plan id as published by Liftr.PAN
  /// [usageType] different usage type like PAYG/COMMITTED
  PlanDataResponse({
    required this.billingCycle,
    required this.effectiveDate,
    required this.planId,
    this.usageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingCycle': billingCycle,
      'effectiveDate': effectiveDate,
      'planId': planId,
      'usageType': ?usageType,
    };
  }

  factory PlanDataResponse.fromMap(Map<String, dynamic> map) {
    return PlanDataResponse(
      billingCycle: map['billingCycle'] as String,
      effectiveDate: map['effectiveDate'] as String,
      planId: map['planId'] as String,
      usageType: map['usageType'] == null ? null : map['usageType'] as String,
    );
  }
}

