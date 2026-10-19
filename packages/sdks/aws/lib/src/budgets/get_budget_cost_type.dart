// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBudgetCostType {
  /// Whether to include credits in the cost budget.
  final pulumi.Input<bool> includeCredit;
  /// Whether to include discounts in the cost budget.
  final pulumi.Input<bool> includeDiscount;
  /// Whether to include other subscription costs in the cost budget.
  final pulumi.Input<bool> includeOtherSubscription;
  /// Whether to include recurring costs in the cost budget.
  final pulumi.Input<bool> includeRecurring;
  /// Whether to include refunds in the cost budget.
  final pulumi.Input<bool> includeRefund;
  /// Whether to include subscriptions in the cost budget.
  final pulumi.Input<bool> includeSubscription;
  /// Whether to include support costs in the cost budget.
  final pulumi.Input<bool> includeSupport;
  /// Whether to include tax in the cost budget.
  final pulumi.Input<bool> includeTax;
  /// Whether to include upfront costs in the cost budget.
  final pulumi.Input<bool> includeUpfront;
  /// Whether the budget uses the amortized rate.
  final pulumi.Input<bool> useAmortized;
  /// Whether to use blended costs in the cost budget.
  final pulumi.Input<bool> useBlended;

  /// Creates a new [GetBudgetCostType].
  /// [includeCredit] Whether to include credits in the cost budget.
  /// [includeDiscount] Whether to include discounts in the cost budget.
  /// [includeOtherSubscription] Whether to include other subscription costs in the cost budget.
  /// [includeRecurring] Whether to include recurring costs in the cost budget.
  /// [includeRefund] Whether to include refunds in the cost budget.
  /// [includeSubscription] Whether to include subscriptions in the cost budget.
  /// [includeSupport] Whether to include support costs in the cost budget.
  /// [includeTax] Whether to include tax in the cost budget.
  /// [includeUpfront] Whether to include upfront costs in the cost budget.
  /// [useAmortized] Whether the budget uses the amortized rate.
  /// [useBlended] Whether to use blended costs in the cost budget.
  const GetBudgetCostType({
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
    return <String, dynamic>{
      'includeCredit': includeCredit,
      'includeDiscount': includeDiscount,
      'includeOtherSubscription': includeOtherSubscription,
      'includeRecurring': includeRecurring,
      'includeRefund': includeRefund,
      'includeSubscription': includeSubscription,
      'includeSupport': includeSupport,
      'includeTax': includeTax,
      'includeUpfront': includeUpfront,
      'useAmortized': useAmortized,
      'useBlended': useBlended,
    };
  }

  factory GetBudgetCostType.fromMap(Map<String, dynamic> map) {
    return GetBudgetCostType(
      includeCredit: pulumi.Input.fromValue(map['includeCredit'] as bool),
      includeDiscount: pulumi.Input.fromValue(map['includeDiscount'] as bool),
      includeOtherSubscription: pulumi.Input.fromValue(map['includeOtherSubscription'] as bool),
      includeRecurring: pulumi.Input.fromValue(map['includeRecurring'] as bool),
      includeRefund: pulumi.Input.fromValue(map['includeRefund'] as bool),
      includeSubscription: pulumi.Input.fromValue(map['includeSubscription'] as bool),
      includeSupport: pulumi.Input.fromValue(map['includeSupport'] as bool),
      includeTax: pulumi.Input.fromValue(map['includeTax'] as bool),
      includeUpfront: pulumi.Input.fromValue(map['includeUpfront'] as bool),
      useAmortized: pulumi.Input.fromValue(map['useAmortized'] as bool),
      useBlended: pulumi.Input.fromValue(map['useBlended'] as bool),
    );
  }
}
