// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Billing plan information.
class PlanData {
  /// different billing cycles like MONTHLY/WEEKLY
  final pulumi.Input<String> billingCycle;
  /// plan id as published by Liftr.PAN
  final pulumi.Input<String> planId;
  /// different usage type like PAYG/COMMITTED
  final pulumi.Input<String>? usageType;

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
      billingCycle: pulumi.Input.fromValue(map['billingCycle'] as String),
      planId: pulumi.Input.fromValue(map['planId'] as String),
      usageType: (() { final guardedValue = map['usageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

