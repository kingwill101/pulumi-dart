// ignore_for_file: unused_element, unnecessary_cast

import 'google_type_money_response.dart';

/// The budgeted amount for each usage period.
class GoogleCloudBillingBudgetsV1BudgetAmountResponse {
  /// Use the last period's actual spend as the budget for the present period. LastPeriodAmount can only be set when the budget's time period is a Filter.calendar_period. It cannot be set in combination with Filter.custom_period.
  final Map<String, dynamic> lastPeriodAmount;

  /// A specified amount to use as the budget. `currency_code` is optional. If specified when creating a budget, it must match the currency of the billing account. If specified when updating a budget, it must match the currency_code of the existing budget. The `currency_code` is provided on output.
  final GoogleTypeMoneyResponse specifiedAmount;

  /// Creates a new [GoogleCloudBillingBudgetsV1BudgetAmountResponse].
  /// [lastPeriodAmount] Use the last period's actual spend as the budget for the present period. LastPeriodAmount can only be set when the budget's time period is a Filter.calendar_period. It cannot be set in combination with Filter.custom_period.
  /// [specifiedAmount] A specified amount to use as the budget. `currency_code` is optional. If specified when creating a budget, it must match the currency of the billing account. If specified when updating a budget, it must match the currency_code of the existing budget. The `currency_code` is provided on output.
  GoogleCloudBillingBudgetsV1BudgetAmountResponse({
    required this.lastPeriodAmount,
    required this.specifiedAmount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lastPeriodAmount'] = lastPeriodAmount;
    map['specifiedAmount'] = specifiedAmount.toMap();
    return map;
  }

  factory GoogleCloudBillingBudgetsV1BudgetAmountResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBillingBudgetsV1BudgetAmountResponse(
      lastPeriodAmount:
          (map['lastPeriodAmount'] as Map).cast<String, dynamic>(),
      specifiedAmount: GoogleTypeMoneyResponse.fromMap(
          (map['specifiedAmount'] as Map).cast<String, dynamic>()),
    );
  }
}
