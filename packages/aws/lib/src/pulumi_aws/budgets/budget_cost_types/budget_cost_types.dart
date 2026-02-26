// ignore_for_file: unused_element, unnecessary_cast

class BudgetCostTypes {
  /// A boolean value whether to include credits in the cost budget. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>
  final bool? includeCredit;

  /// Whether a budget includes discounts. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>
  final bool? includeDiscount;

  /// A boolean value whether to include other subscription costs in the cost budget. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>
  final bool? includeOtherSubscription;

  /// A boolean value whether to include recurring costs in the cost budget. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>
  final bool? includeRecurring;

  /// A boolean value whether to include refunds in the cost budget. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>
  final bool? includeRefund;

  /// A boolean value whether to include subscriptions in the cost budget. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>
  final bool? includeSubscription;

  /// A boolean value whether to include support costs in the cost budget. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>
  final bool? includeSupport;

  /// A boolean value whether to include tax in the cost budget. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>
  final bool? includeTax;

  /// A boolean value whether to include upfront costs in the cost budget. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>
  final bool? includeUpfront;

  /// Whether a budget uses the amortized rate. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>
  final bool? useAmortized;

  /// A boolean value whether to use blended costs in the cost budget. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>
  final bool? useBlended;

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
    final map = <String, dynamic>{};
    final includeCreditValue = includeCredit;
    if (includeCreditValue != null) {
      map['includeCredit'] = includeCreditValue;
    }
    final includeDiscountValue = includeDiscount;
    if (includeDiscountValue != null) {
      map['includeDiscount'] = includeDiscountValue;
    }
    final includeOtherSubscriptionValue = includeOtherSubscription;
    if (includeOtherSubscriptionValue != null) {
      map['includeOtherSubscription'] = includeOtherSubscriptionValue;
    }
    final includeRecurringValue = includeRecurring;
    if (includeRecurringValue != null) {
      map['includeRecurring'] = includeRecurringValue;
    }
    final includeRefundValue = includeRefund;
    if (includeRefundValue != null) {
      map['includeRefund'] = includeRefundValue;
    }
    final includeSubscriptionValue = includeSubscription;
    if (includeSubscriptionValue != null) {
      map['includeSubscription'] = includeSubscriptionValue;
    }
    final includeSupportValue = includeSupport;
    if (includeSupportValue != null) {
      map['includeSupport'] = includeSupportValue;
    }
    final includeTaxValue = includeTax;
    if (includeTaxValue != null) {
      map['includeTax'] = includeTaxValue;
    }
    final includeUpfrontValue = includeUpfront;
    if (includeUpfrontValue != null) {
      map['includeUpfront'] = includeUpfrontValue;
    }
    final useAmortizedValue = useAmortized;
    if (useAmortizedValue != null) {
      map['useAmortized'] = useAmortizedValue;
    }
    final useBlendedValue = useBlended;
    if (useBlendedValue != null) {
      map['useBlended'] = useBlendedValue;
    }
    return map;
  }

  factory BudgetCostTypes.fromMap(Map<String, dynamic> map) {
    return BudgetCostTypes(
      includeCredit:
          map['includeCredit'] == null ? null : map['includeCredit'] as bool,
      includeDiscount: map['includeDiscount'] == null
          ? null
          : map['includeDiscount'] as bool,
      includeOtherSubscription: map['includeOtherSubscription'] == null
          ? null
          : map['includeOtherSubscription'] as bool,
      includeRecurring: map['includeRecurring'] == null
          ? null
          : map['includeRecurring'] as bool,
      includeRefund:
          map['includeRefund'] == null ? null : map['includeRefund'] as bool,
      includeSubscription: map['includeSubscription'] == null
          ? null
          : map['includeSubscription'] as bool,
      includeSupport:
          map['includeSupport'] == null ? null : map['includeSupport'] as bool,
      includeTax: map['includeTax'] == null ? null : map['includeTax'] as bool,
      includeUpfront:
          map['includeUpfront'] == null ? null : map['includeUpfront'] as bool,
      useAmortized:
          map['useAmortized'] == null ? null : map['useAmortized'] as bool,
      useBlended: map['useBlended'] == null ? null : map['useBlended'] as bool,
    );
  }
}
