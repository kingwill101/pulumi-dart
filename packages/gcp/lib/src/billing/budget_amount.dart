// ignore_for_file: unused_element, unnecessary_cast

import 'budget_amount_specified_amount.dart';

class BudgetAmount {
  /// Configures a budget amount that is automatically set to 100% of
  /// last period's spend.
  /// Boolean. Set value to true to use. Do not set to false, instead
  /// use the `specified_amount` block.
  final bool? lastPeriodAmount;
  /// A specified amount to use as the budget. currencyCode is
  /// optional. If specified, it must match the currency of the
  /// billing account. The currencyCode is provided on output.
  /// Structure is documented below.
  final BudgetAmountSpecifiedAmount? specifiedAmount;

  /// Creates a new [BudgetAmount].
  /// [lastPeriodAmount] Configures a budget amount that is automatically set to 100% of
  /// [specifiedAmount] A specified amount to use as the budget. currencyCode is
  BudgetAmount({
    this.lastPeriodAmount,
    this.specifiedAmount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastPeriodAmount': ?lastPeriodAmount,
      'specifiedAmount': ?specifiedAmount == null ? null : specifiedAmount!.toMap(),
    };
  }

  factory BudgetAmount.fromMap(Map<String, dynamic> map) {
    return BudgetAmount(
      lastPeriodAmount: map['lastPeriodAmount'] == null ? null : map['lastPeriodAmount'] as bool,
      specifiedAmount: map['specifiedAmount'] == null ? null : BudgetAmountSpecifiedAmount.fromMap((map['specifiedAmount'] as Map).cast<String, dynamic>()),
    );
  }
}

