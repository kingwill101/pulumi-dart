// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BudgetCostTypes {
  /// A boolean value whether to include credits in the cost budget. Defaults to `true`
  final pulumi.Input<bool>? includeCredit;

  /// Whether a budget includes discounts. Defaults to `true`
  final pulumi.Input<bool>? includeDiscount;

  /// A boolean value whether to include other subscription costs in the cost budget. Defaults to `true`
  final pulumi.Input<bool>? includeOtherSubscription;

  /// A boolean value whether to include recurring costs in the cost budget. Defaults to `true`
  final pulumi.Input<bool>? includeRecurring;

  /// A boolean value whether to include refunds in the cost budget. Defaults to `true`
  final pulumi.Input<bool>? includeRefund;

  /// A boolean value whether to include subscriptions in the cost budget. Defaults to `true`
  final pulumi.Input<bool>? includeSubscription;

  /// A boolean value whether to include support costs in the cost budget. Defaults to `true`
  final pulumi.Input<bool>? includeSupport;

  /// A boolean value whether to include tax in the cost budget. Defaults to `true`
  final pulumi.Input<bool>? includeTax;

  /// A boolean value whether to include upfront costs in the cost budget. Defaults to `true`
  final pulumi.Input<bool>? includeUpfront;

  /// Whether a budget uses the amortized rate. Defaults to `false`
  final pulumi.Input<bool>? useAmortized;

  /// A boolean value whether to use blended costs in the cost budget. Defaults to `false`
  final pulumi.Input<bool>? useBlended;

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
      includeCredit: (() {
        final guardedValue = map['includeCredit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      includeDiscount: (() {
        final guardedValue = map['includeDiscount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      includeOtherSubscription: (() {
        final guardedValue = map['includeOtherSubscription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      includeRecurring: (() {
        final guardedValue = map['includeRecurring'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      includeRefund: (() {
        final guardedValue = map['includeRefund'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      includeSubscription: (() {
        final guardedValue = map['includeSubscription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      includeSupport: (() {
        final guardedValue = map['includeSupport'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      includeTax: (() {
        final guardedValue = map['includeTax'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      includeUpfront: (() {
        final guardedValue = map['includeUpfront'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      useAmortized: (() {
        final guardedValue = map['useAmortized'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      useBlended: (() {
        final guardedValue = map['useBlended'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
