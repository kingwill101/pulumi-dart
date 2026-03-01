// ignore_for_file: unused_element, unnecessary_cast


class GetMonitorPlan {
  /// Different billing cycles.
  final String billingCycle;
  /// Date when plan was applied.
  final String effectiveDate;
  /// Plan id as published by Dynatrace.
  final String plan;
  /// Different usage type.
  final String usageType;

  /// Creates a new [GetMonitorPlan].
  /// [billingCycle] Different billing cycles.
  /// [effectiveDate] Date when plan was applied.
  /// [plan] Plan id as published by Dynatrace.
  /// [usageType] Different usage type.
  GetMonitorPlan({
    required this.billingCycle,
    required this.effectiveDate,
    required this.plan,
    required this.usageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingCycle': billingCycle,
      'effectiveDate': effectiveDate,
      'plan': plan,
      'usageType': usageType,
    };
  }

  factory GetMonitorPlan.fromMap(Map<String, dynamic> map) {
    return GetMonitorPlan(
      billingCycle: map['billingCycle'] as String,
      effectiveDate: map['effectiveDate'] as String,
      plan: map['plan'] as String,
      usageType: map['usageType'] as String,
    );
  }
}

