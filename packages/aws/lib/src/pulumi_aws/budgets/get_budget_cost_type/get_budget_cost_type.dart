// ignore_for_file: unused_element, unnecessary_cast

class GetBudgetCostType {
  /// A boolean value whether to include credits in the cost budget. Defaults to `true`.
  final bool includeCredit;

  /// Whether a budget includes discounts. Defaults to `true`.
  final bool includeDiscount;

  /// A boolean value whether to include other subscription costs in the cost budget. Defaults to `true`.
  final bool includeOtherSubscription;

  /// A boolean value whether to include recurring costs in the cost budget. Defaults to `true`.
  final bool includeRecurring;

  /// A boolean value whether to include refunds in the cost budget. Defaults to `true`.
  final bool includeRefund;

  /// A boolean value whether to include subscriptions in the cost budget. Defaults to `true`.
  final bool includeSubscription;

  /// A boolean value whether to include support costs in the cost budget. Defaults to `true`.
  final bool includeSupport;

  /// A boolean value whether to include tax in the cost budget. Defaults to `true`.
  final bool includeTax;

  /// A boolean value whether to include upfront costs in the cost budget. Defaults to `true`.
  final bool includeUpfront;

  /// Whether a budget uses the amortized rate. Defaults to `false`.
  final bool useAmortized;

  /// A boolean value whether to use blended costs in the cost budget. Defaults to `false`.
  final bool useBlended;

  GetBudgetCostType({
    required this.includeCredit,
    required this.includeDiscount,
    required this.includeOtherSubscription,
    required this.includeRecurring,
    required this.includeRefund,
    required this.includeSubscription,
    required this.includeSupport,
    required this.includeTax,
    required this.includeUpfront,
    required this.useAmortized,
    required this.useBlended,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['includeCredit'] = includeCredit;
    map['includeDiscount'] = includeDiscount;
    map['includeOtherSubscription'] = includeOtherSubscription;
    map['includeRecurring'] = includeRecurring;
    map['includeRefund'] = includeRefund;
    map['includeSubscription'] = includeSubscription;
    map['includeSupport'] = includeSupport;
    map['includeTax'] = includeTax;
    map['includeUpfront'] = includeUpfront;
    map['useAmortized'] = useAmortized;
    map['useBlended'] = useBlended;
    return map;
  }

  factory GetBudgetCostType.fromMap(Map<String, dynamic> map) {
    return GetBudgetCostType(
      includeCredit: map['includeCredit'] as bool,
      includeDiscount: map['includeDiscount'] as bool,
      includeOtherSubscription: map['includeOtherSubscription'] as bool,
      includeRecurring: map['includeRecurring'] as bool,
      includeRefund: map['includeRefund'] as bool,
      includeSubscription: map['includeSubscription'] as bool,
      includeSupport: map['includeSupport'] as bool,
      includeTax: map['includeTax'] as bool,
      includeUpfront: map['includeUpfront'] as bool,
      useAmortized: map['useAmortized'] as bool,
      useBlended: map['useBlended'] as bool,
    );
  }
}
