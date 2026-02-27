// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_ownership_scope.dart';
import 'google_cloud_billing_budgets_v1_budget_amount.dart';
import 'google_cloud_billing_budgets_v1_filter.dart';
import 'google_cloud_billing_budgets_v1_notifications_rule.dart';
import 'google_cloud_billing_budgets_v1_threshold_rule.dart';

/// The set of arguments for Budget.
class BudgetArgs {
  /// Budgeted amount.
  final pulumi.Input<GoogleCloudBillingBudgetsV1BudgetAmount> amount;
  final pulumi.Input<String> billingAccountId;

  /// Optional. Filters that define which resources are used to compute the actual spend against the budget amount, such as projects, services, and the budget's time period, as well as other filters.
  final pulumi.Input<GoogleCloudBillingBudgetsV1Filter>? budgetFilter;

  /// User data for display name in UI. The name must be less than or equal to 60 characters.
  final pulumi.Input<String>? displayName;

  /// Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag causes an update to overwrite other changes.
  final pulumi.Input<String>? etag;

  /// Optional. Rules to apply to notifications sent based on budget spend and thresholds.
  final pulumi.Input<GoogleCloudBillingBudgetsV1NotificationsRule>?
      notificationsRule;
  final pulumi.Input<BudgetOwnershipScope>? ownershipScope;

  /// Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.
  final pulumi.Input<List<GoogleCloudBillingBudgetsV1ThresholdRule>>?
      thresholdRules;

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
    map['amount'] = pulumi.Input.mapInputValue<
        GoogleCloudBillingBudgetsV1BudgetAmount,
        Map<String, dynamic>>(amount, (value) => value.toMap());
    map['billingAccountId'] = billingAccountId;
    final budgetFilterValue = budgetFilter;
    if (budgetFilterValue != null) {
      map['budgetFilter'] = pulumi.Input.mapOptionalInputValue<
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
      map['notificationsRule'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudBillingBudgetsV1NotificationsRule,
              Map<String, dynamic>>(
          notificationsRuleValue, (value) => value.toMap());
    }
    final ownershipScopeValue = ownershipScope;
    if (ownershipScopeValue != null) {
      map['ownershipScope'] =
          pulumi.Input.mapOptionalInputValue<BudgetOwnershipScope, String>(
              ownershipScopeValue, (value) => value.value);
    }
    final thresholdRulesValue = thresholdRules;
    if (thresholdRulesValue != null) {
      map['thresholdRules'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudBillingBudgetsV1ThresholdRule>,
              List<Map<String, dynamic>>>(
          thresholdRulesValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudBillingBudgetsV1ThresholdRule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory BudgetArgs.fromMap(Map<String, dynamic> map) {
    return BudgetArgs(
      amount: pulumi.Input.asInput<GoogleCloudBillingBudgetsV1BudgetAmount>(
          map['amount']),
      billingAccountId: pulumi.Input.asInput<String>(map['billingAccountId']),
      budgetFilter:
          pulumi.Input.asOptionalInput<GoogleCloudBillingBudgetsV1Filter>(
              map['budgetFilter']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      notificationsRule: pulumi.Input.asOptionalInput<
              GoogleCloudBillingBudgetsV1NotificationsRule>(
          map['notificationsRule']),
      ownershipScope: pulumi.Input.asOptionalInput<BudgetOwnershipScope>(
          map['ownershipScope']),
      thresholdRules: pulumi.Input.asOptionalInput<
              List<GoogleCloudBillingBudgetsV1ThresholdRule>>(
          map['thresholdRules']),
    );
  }
}
