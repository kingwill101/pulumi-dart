// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBudgetCostType {
  /// A boolean value whether to include credits in the cost budget. Defaults to `true`.
  final pulumi.Input<bool> includeCredit;
  /// Whether a budget includes discounts. Defaults to `true`.
  final pulumi.Input<bool> includeDiscount;
  /// A boolean value whether to include other subscription costs in the cost budget. Defaults to `true`.
  final pulumi.Input<bool> includeOtherSubscription;
  /// A boolean value whether to include recurring costs in the cost budget. Defaults to `true`.
  final pulumi.Input<bool> includeRecurring;
  /// A boolean value whether to include refunds in the cost budget. Defaults to `true`.
  final pulumi.Input<bool> includeRefund;
  /// A boolean value whether to include subscriptions in the cost budget. Defaults to `true`.
  final pulumi.Input<bool> includeSubscription;
  /// A boolean value whether to include support costs in the cost budget. Defaults to `true`.
  final pulumi.Input<bool> includeSupport;
  /// A boolean value whether to include tax in the cost budget. Defaults to `true`.
  final pulumi.Input<bool> includeTax;
  /// A boolean value whether to include upfront costs in the cost budget. Defaults to `true`.
  final pulumi.Input<bool> includeUpfront;
  /// Whether a budget uses the amortized rate. Defaults to `false`.
  final pulumi.Input<bool> useAmortized;
  /// A boolean value whether to use blended costs in the cost budget. Defaults to `false`.
  final pulumi.Input<bool> useBlended;

  /// Creates a new [GetBudgetCostType].
  /// [includeCredit] A boolean value whether to include credits in the cost budget. Defaults to `true`.
  /// [includeDiscount] Whether a budget includes discounts. Defaults to `true`.
  /// [includeOtherSubscription] A boolean value whether to include other subscription costs in the cost budget. Defaults to `true`.
  /// [includeRecurring] A boolean value whether to include recurring costs in the cost budget. Defaults to `true`.
  /// [includeRefund] A boolean value whether to include refunds in the cost budget. Defaults to `true`.
  /// [includeSubscription] A boolean value whether to include subscriptions in the cost budget. Defaults to `true`.
  /// [includeSupport] A boolean value whether to include support costs in the cost budget. Defaults to `true`.
  /// [includeTax] A boolean value whether to include tax in the cost budget. Defaults to `true`.
  /// [includeUpfront] A boolean value whether to include upfront costs in the cost budget. Defaults to `true`.
  /// [useAmortized] Whether a budget uses the amortized rate. Defaults to `false`.
  /// [useBlended] A boolean value whether to use blended costs in the cost budget. Defaults to `false`.
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

