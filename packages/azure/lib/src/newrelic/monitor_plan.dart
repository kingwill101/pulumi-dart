// ignore_for_file: unused_element, unnecessary_cast


class MonitorPlan {
  /// Specifies the billing cycles. Possible values are `MONTHLY`, `WEEKLY` and `YEARLY`. Defaults to `MONTHLY`. Changing this forces a new Azure Native New Relic Monitor to be created.
  final String? billingCycle;
  /// Specifies the date when plan was applied. Changing this forces a new Azure Native New Relic Monitor to be created.
  final String effectiveDate;
  /// Specifies the plan id published by NewRelic. The only possible value is `newrelic-pay-as-you-go-free-live`. Defaults to `newrelic-pay-as-you-go-free-live`. Changing this forces a new Azure Native New Relic Monitor to be created.
  final String? planId;
  /// Specifies the usage type. Possible values are `COMMITTED` and `PAYG`. Defaults to `PAYG`. Changing this forces a new Azure Native New Relic Monitor to be created.
  final String? usageType;

  /// Creates a new [MonitorPlan].
  /// [billingCycle] Specifies the billing cycles. Possible values are `MONTHLY`, `WEEKLY` and `YEARLY`. Defaults to `MONTHLY`. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [effectiveDate] Specifies the date when plan was applied. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [planId] Specifies the plan id published by NewRelic. The only possible value is `newrelic-pay-as-you-go-free-live`. Defaults to `newrelic-pay-as-you-go-free-live`. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [usageType] Specifies the usage type. Possible values are `COMMITTED` and `PAYG`. Defaults to `PAYG`. Changing this forces a new Azure Native New Relic Monitor to be created.
  MonitorPlan({
    this.billingCycle,
    required this.effectiveDate,
    this.planId,
    this.usageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingCycle': ?billingCycle,
      'effectiveDate': effectiveDate,
      'planId': ?planId,
      'usageType': ?usageType,
    };
  }

  factory MonitorPlan.fromMap(Map<String, dynamic> map) {
    return MonitorPlan(
      billingCycle: map['billingCycle'] == null ? null : map['billingCycle'] as String,
      effectiveDate: map['effectiveDate'] as String,
      planId: map['planId'] == null ? null : map['planId'] as String,
      usageType: map['usageType'] == null ? null : map['usageType'] as String,
    );
  }
}

