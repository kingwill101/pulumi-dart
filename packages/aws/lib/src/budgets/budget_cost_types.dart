// ignore_for_file: unused_element, unnecessary_cast


class BudgetCostTypes {
  /// A boolean value whether to include credits in the cost budget. Defaults to `true`
  final bool? includeCredit;
  /// Whether a budget includes discounts. Defaults to `true`
  final bool? includeDiscount;
  /// A boolean value whether to include other subscription costs in the cost budget. Defaults to `true`
  final bool? includeOtherSubscription;
  /// A boolean value whether to include recurring costs in the cost budget. Defaults to `true`
  final bool? includeRecurring;
  /// A boolean value whether to include refunds in the cost budget. Defaults to `true`
  final bool? includeRefund;
  /// A boolean value whether to include subscriptions in the cost budget. Defaults to `true`
  final bool? includeSubscription;
  /// A boolean value whether to include support costs in the cost budget. Defaults to `true`
  final bool? includeSupport;
  /// A boolean value whether to include tax in the cost budget. Defaults to `true`
  final bool? includeTax;
  /// A boolean value whether to include upfront costs in the cost budget. Defaults to `true`
  final bool? includeUpfront;
  /// Whether a budget uses the amortized rate. Defaults to `false`
  final bool? useAmortized;
  /// A boolean value whether to use blended costs in the cost budget. Defaults to `false`
  final bool? useBlended;

  /// Creates a new [BudgetCostTypes].
  /// [includeCredit] A boolean value whether to include credits in the cost budget. Defaults to `true`
  /// [includeDiscount] Whether a budget includes discounts. Defaults to `true`
  /// [includeOtherSubscription] A boolean value whether to include other subscription costs in the cost budget. Defaults to `true`
  /// [includeRecurring] A boolean value whether to include recurring costs in the cost budget. Defaults to `true`
  /// [includeRefund] A boolean value whether to include refunds in the cost budget. Defaults to `true`
  /// [includeSubscription] A boolean value whether to include subscriptions in the cost budget. Defaults to `true`
  /// [includeSupport] A boolean value whether to include support costs in the cost budget. Defaults to `true`
  /// [includeTax] A boolean value whether to include tax in the cost budget. Defaults to `true`
  /// [includeUpfront] A boolean value whether to include upfront costs in the cost budget. Defaults to `true`
  /// [useAmortized] Whether a budget uses the amortized rate. Defaults to `false`
  /// [useBlended] A boolean value whether to use blended costs in the cost budget. Defaults to `false`
  BudgetCostTypes({
    this.includeCredit,
    this.includeDiscount,
    this.includeOtherSubscription,
    this.includeRecurring,
    this.includeRefund,
    this.includeSubscription,
    this.includeSupport,
    this.includeTax,
    this.includeUpfront,
    this.useAmortized,
    this.useBlended,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeCredit': ?includeCredit,
      'includeDiscount': ?includeDiscount,
      'includeOtherSubscription': ?includeOtherSubscription,
      'includeRecurring': ?includeRecurring,
      'includeRefund': ?includeRefund,
      'includeSubscription': ?includeSubscription,
      'includeSupport': ?includeSupport,
      'includeTax': ?includeTax,
      'includeUpfront': ?includeUpfront,
      'useAmortized': ?useAmortized,
      'useBlended': ?useBlended,
    };
  }

  factory BudgetCostTypes.fromMap(Map<String, dynamic> map) {
    return BudgetCostTypes(
      includeCredit: map['includeCredit'] == null ? null : map['includeCredit'] as bool,
      includeDiscount: map['includeDiscount'] == null ? null : map['includeDiscount'] as bool,
      includeOtherSubscription: map['includeOtherSubscription'] == null ? null : map['includeOtherSubscription'] as bool,
      includeRecurring: map['includeRecurring'] == null ? null : map['includeRecurring'] as bool,
      includeRefund: map['includeRefund'] == null ? null : map['includeRefund'] as bool,
      includeSubscription: map['includeSubscription'] == null ? null : map['includeSubscription'] as bool,
      includeSupport: map['includeSupport'] == null ? null : map['includeSupport'] as bool,
      includeTax: map['includeTax'] == null ? null : map['includeTax'] as bool,
      includeUpfront: map['includeUpfront'] == null ? null : map['includeUpfront'] as bool,
      useAmortized: map['useAmortized'] == null ? null : map['useAmortized'] as bool,
      useBlended: map['useBlended'] == null ? null : map['useBlended'] as bool,
    );
  }
}

