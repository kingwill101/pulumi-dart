// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'budget_ownership_scope2.dart';
import 'google_cloud_billing_budgets_v1beta1_all_updates_rule.dart';
import 'google_cloud_billing_budgets_v1beta1_budget_amount.dart';
import 'google_cloud_billing_budgets_v1beta1_filter.dart';
import 'google_cloud_billing_budgets_v1beta1_threshold_rule.dart';

/// The set of arguments for Budget.
class BudgetArgs2 {
  /// Optional. Rules to apply to notifications sent based on budget spend and thresholds.
  final Input<GoogleCloudBillingBudgetsV1beta1AllUpdatesRule>? allUpdatesRule;

  /// Budgeted amount.
  final Input<GoogleCloudBillingBudgetsV1beta1BudgetAmount> amount;
  final Input<String> billingAccountId;

  /// Optional. Filters that define which resources are used to compute the actual spend against the budget amount, such as projects, services, and the budget's time period, as well as other filters.
  final Input<GoogleCloudBillingBudgetsV1beta1Filter>? budgetFilter;

  /// User data for display name in UI. Validation: <= 60 chars.
  final Input<String>? displayName;

  /// Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag will cause an update to overwrite other changes.
  final Input<String>? etag;
  final Input<BudgetOwnershipScope2>? ownershipScope;

  /// Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.
  final Input<List<GoogleCloudBillingBudgetsV1beta1ThresholdRule>>?
      thresholdRules;

  BudgetArgs2({
    this.allUpdatesRule,
    required this.amount,
    required this.billingAccountId,
    this.budgetFilter,
    this.displayName,
    this.etag,
    this.ownershipScope,
    this.thresholdRules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allUpdatesRuleValue = allUpdatesRule;
    if (allUpdatesRuleValue != null) {
      map['allUpdatesRule'] = Input.mapOptionalInputValue<
          GoogleCloudBillingBudgetsV1beta1AllUpdatesRule,
          Map<String, dynamic>>(allUpdatesRuleValue, (value) => value.toMap());
    }
    map['amount'] = Input.mapInputValue<
        GoogleCloudBillingBudgetsV1beta1BudgetAmount,
        Map<String, dynamic>>(amount, (value) => value.toMap());
    map['billingAccountId'] = billingAccountId;
    final budgetFilterValue = budgetFilter;
    if (budgetFilterValue != null) {
      map['budgetFilter'] = Input.mapOptionalInputValue<
          GoogleCloudBillingBudgetsV1beta1Filter,
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
    final ownershipScopeValue = ownershipScope;
    if (ownershipScopeValue != null) {
      map['ownershipScope'] =
          Input.mapOptionalInputValue<BudgetOwnershipScope2, String>(
              ownershipScopeValue, (value) => value.value);
    }
    final thresholdRulesValue = thresholdRules;
    if (thresholdRulesValue != null) {
      map['thresholdRules'] = Input.mapOptionalInputValue<
              List<GoogleCloudBillingBudgetsV1beta1ThresholdRule>,
              List<Map<String, dynamic>>>(
          thresholdRulesValue,
          (value) => Input.encodeList<
              GoogleCloudBillingBudgetsV1beta1ThresholdRule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory BudgetArgs2.fromMap(Map<String, dynamic> map) {
    return BudgetArgs2(
      allUpdatesRule:
          Input.asOptionalInput<GoogleCloudBillingBudgetsV1beta1AllUpdatesRule>(
              map['allUpdatesRule']),
      amount: Input.asInput<GoogleCloudBillingBudgetsV1beta1BudgetAmount>(
          map['amount']),
      billingAccountId: Input.asInput<String>(map['billingAccountId']),
      budgetFilter:
          Input.asOptionalInput<GoogleCloudBillingBudgetsV1beta1Filter>(
              map['budgetFilter']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      etag: Input.asOptionalInput<String>(map['etag']),
      ownershipScope:
          Input.asOptionalInput<BudgetOwnershipScope2>(map['ownershipScope']),
      thresholdRules: Input.asOptionalInput<
              List<GoogleCloudBillingBudgetsV1beta1ThresholdRule>>(
          map['thresholdRules']),
    );
  }
}
