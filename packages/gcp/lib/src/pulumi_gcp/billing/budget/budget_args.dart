// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../budget_all_updates_rule/budget_all_updates_rule.dart';
import '../budget_amount/budget_amount.dart';
import '../budget_budget_filter/budget_budget_filter.dart';
import '../budget_threshold_rule/budget_threshold_rule.dart';

/// The set of arguments for Budget.
class BudgetArgs {
  /// Defines notifications that are sent on every update to the
  /// billing account's spend, regardless of the thresholds defined
  /// using threshold rules.
  /// Structure is documented below.
  final pulumi.Input<BudgetAllUpdatesRule>? allUpdatesRule;

  /// The budgeted amount for each usage period.
  /// Structure is documented below.
  final pulumi.Input<BudgetAmount> amount;

  /// ID of the billing account to set a budget on.
  final pulumi.Input<String> billingAccount;

  /// Filters that define which resources are used to compute the actual
  /// spend against the budget.
  /// Structure is documented below.
  final pulumi.Input<BudgetBudgetFilter>? budgetFilter;

  /// User data for display name in UI. Must be <= 60 chars.
  final pulumi.Input<String>? displayName;

  /// The ownership scope of the budget. The ownership scope and users'
  /// IAM permissions determine who has full access to the budget's data.
  /// Possible values are: `OWNERSHIP_SCOPE_UNSPECIFIED`, `ALL_USERS`, `BILLING_ACCOUNT`.
  final pulumi.Input<String>? ownershipScope;

  /// Rules that trigger alerts (notifications of thresholds being
  /// crossed) when spend exceeds the specified percentages of the
  /// budget.
  /// Structure is documented below.
  final pulumi.Input<List<BudgetThresholdRule>>? thresholdRules;

  BudgetArgs({
    this.allUpdatesRule,
    required this.amount,
    required this.billingAccount,
    this.budgetFilter,
    this.displayName,
    this.ownershipScope,
    this.thresholdRules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allUpdatesRuleValue = allUpdatesRule;
    if (allUpdatesRuleValue != null) {
      map['allUpdatesRule'] = pulumi.Input.mapOptionalInputValue<
          BudgetAllUpdatesRule,
          Map<String, dynamic>>(allUpdatesRuleValue, (value) => value.toMap());
    }
    map['amount'] =
        pulumi.Input.mapInputValue<BudgetAmount, Map<String, dynamic>>(
            amount, (value) => value.toMap());
    map['billingAccount'] = billingAccount;
    final budgetFilterValue = budgetFilter;
    if (budgetFilterValue != null) {
      map['budgetFilter'] = pulumi.Input.mapOptionalInputValue<
          BudgetBudgetFilter,
          Map<String, dynamic>>(budgetFilterValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final ownershipScopeValue = ownershipScope;
    if (ownershipScopeValue != null) {
      map['ownershipScope'] = ownershipScopeValue;
    }
    final thresholdRulesValue = thresholdRules;
    if (thresholdRulesValue != null) {
      map['thresholdRules'] = pulumi.Input.mapOptionalInputValue<
              List<BudgetThresholdRule>, List<Map<String, dynamic>>>(
          thresholdRulesValue,
          (value) => pulumi.Input.encodeList<BudgetThresholdRule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory BudgetArgs.fromMap(Map<String, dynamic> map) {
    return BudgetArgs(
      allUpdatesRule: pulumi.Input.asOptionalInput<BudgetAllUpdatesRule>(
          map['allUpdatesRule']),
      amount: pulumi.Input.asInput<BudgetAmount>(map['amount']),
      billingAccount: pulumi.Input.asInput<String>(map['billingAccount']),
      budgetFilter:
          pulumi.Input.asOptionalInput<BudgetBudgetFilter>(map['budgetFilter']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      ownershipScope:
          pulumi.Input.asOptionalInput<String>(map['ownershipScope']),
      thresholdRules: pulumi.Input.asOptionalInput<List<BudgetThresholdRule>>(
          map['thresholdRules']),
    );
  }
}
