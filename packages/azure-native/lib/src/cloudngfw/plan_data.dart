// ignore_for_file: unused_element, unnecessary_cast


/// Billing plan information.
class PlanData {
  /// different billing cycles like MONTHLY/WEEKLY
  final String billingCycle;
  /// plan id as published by Liftr.PAN
  final String planId;
  /// different usage type like PAYG/COMMITTED
  final String? usageType;

  /// Creates a new [PlanData].
  /// [billingCycle] different billing cycles like MONTHLY/WEEKLY
  /// [planId] plan id as published by Liftr.PAN
  /// [usageType] different usage type like PAYG/COMMITTED
  PlanData({
    required this.billingCycle,
    required this.planId,
    this.usageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingCycle': billingCycle,
      'planId': planId,
      'usageType': ?usageType,
    };
  }

  factory PlanData.fromMap(Map<String, dynamic> map) {
    return PlanData(
      billingCycle: map['billingCycle'] as String,
      planId: map['planId'] as String,
      usageType: map['usageType'] == null ? null : map['usageType'] as String,
    );
  }
}

