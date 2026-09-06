// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Billing plan information.
class PlanDataResponse {
  /// different billing cycles like MONTHLY/WEEKLY
  final pulumi.Input<String> billingCycle;
  /// date when plan was applied
  final pulumi.Input<String> effectiveDate;
  /// plan id as published by Liftr.PAN
  final pulumi.Input<String> planId;
  /// different usage type like PAYG/COMMITTED
  final pulumi.Input<String?>? usageType;

  /// Creates a new [PlanDataResponse].
  /// [billingCycle] different billing cycles like MONTHLY/WEEKLY
  /// [effectiveDate] date when plan was applied
  /// [planId] plan id as published by Liftr.PAN
  /// [usageType] different usage type like PAYG/COMMITTED
  const PlanDataResponse({
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
      billingCycle: pulumi.Input.fromValue(map['billingCycle'] as String),
      effectiveDate: pulumi.Input.fromValue(map['effectiveDate'] as String),
      planId: pulumi.Input.fromValue(map['planId'] as String),
      usageType: (() { final guardedValue = map['usageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
