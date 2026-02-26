// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'budget_ownership_scope.dart';
import 'google_cloud_billing_budgets_v1_budget_amount.dart';
import 'google_cloud_billing_budgets_v1_filter.dart';
import 'google_cloud_billing_budgets_v1_notifications_rule.dart';
import 'google_cloud_billing_budgets_v1_threshold_rule.dart';

/// The set of arguments for Budget.
class BudgetArgs {
  /// Budgeted amount.
  final Input<GoogleCloudBillingBudgetsV1BudgetAmount> amount;
  final Input<String> billingAccountId;

  /// Optional. Filters that define which resources are used to compute the actual spend against the budget amount, such as projects, services, and the budget's time period, as well as other filters.
  final Input<GoogleCloudBillingBudgetsV1Filter>? budgetFilter;

  /// User data for display name in UI. The name must be less than or equal to 60 characters.
  final Input<String>? displayName;

  /// Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag causes an update to overwrite other changes.
  final Input<String>? etag;

  /// Optional. Rules to apply to notifications sent based on budget spend and thresholds.
  final Input<GoogleCloudBillingBudgetsV1NotificationsRule>? notificationsRule;
  final Input<BudgetOwnershipScope>? ownershipScope;

  /// Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.
  final Input<List<GoogleCloudBillingBudgetsV1ThresholdRule>>? thresholdRules;

  BudgetArgs({
    required this.amount,
    required this.billingAccountId,
    this.budgetFilter,
    this.displayName,
    this.etag,
    this.notificationsRule,
    this.ownershipScope,
    this.thresholdRules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['amount'] = Input.mapInputValue<GoogleCloudBillingBudgetsV1BudgetAmount,
        Map<String, dynamic>>(amount, (value) => value.toMap());
    map['billingAccountId'] = billingAccountId;
    final budgetFilterValue = budgetFilter;
    if (budgetFilterValue != null) {
      map['budgetFilter'] = Input.mapOptionalInputValue<
          GoogleCloudBillingBudgetsV1Filter,
          Map<String, dynamic>>(budgetFilterValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final notificationsRuleValue = notificationsRule;
    if (notificationsRuleValue != null) {
      map['notificationsRule'] = Input.mapOptionalInputValue<
              GoogleCloudBillingBudgetsV1NotificationsRule,
              Map<String, dynamic>>(
          notificationsRuleValue, (value) => value.toMap());
    }
    final ownershipScopeValue = ownershipScope;
    if (ownershipScopeValue != null) {
      map['ownershipScope'] =
          Input.mapOptionalInputValue<BudgetOwnershipScope, String>(
              ownershipScopeValue, (value) => value.value);
    }
    final thresholdRulesValue = thresholdRules;
    if (thresholdRulesValue != null) {
      map['thresholdRules'] = Input.mapOptionalInputValue<
              List<GoogleCloudBillingBudgetsV1ThresholdRule>,
              List<Map<String, dynamic>>>(
          thresholdRulesValue,
          (value) => Input.encodeList<GoogleCloudBillingBudgetsV1ThresholdRule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory BudgetArgs.fromMap(Map<String, dynamic> map) {
    return BudgetArgs(
      amount:
          Input.asInput<GoogleCloudBillingBudgetsV1BudgetAmount>(map['amount']),
      billingAccountId: Input.asInput<String>(map['billingAccountId']),
      budgetFilter: Input.asOptionalInput<GoogleCloudBillingBudgetsV1Filter>(
          map['budgetFilter']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      etag: Input.asOptionalInput<String>(map['etag']),
      notificationsRule:
          Input.asOptionalInput<GoogleCloudBillingBudgetsV1NotificationsRule>(
              map['notificationsRule']),
      ownershipScope:
          Input.asOptionalInput<BudgetOwnershipScope>(map['ownershipScope']),
      thresholdRules:
          Input.asOptionalInput<List<GoogleCloudBillingBudgetsV1ThresholdRule>>(
              map['thresholdRules']),
    );
  }
}
