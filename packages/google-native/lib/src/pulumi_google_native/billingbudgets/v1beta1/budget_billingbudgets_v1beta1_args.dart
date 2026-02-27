// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_ownership_scope_billingbudgets_v1beta1.dart';
import 'google_cloud_billing_budgets_v1beta1_all_updates_rule.dart';
import 'google_cloud_billing_budgets_v1beta1_budget_amount.dart';
import 'google_cloud_billing_budgets_v1beta1_filter.dart';
import 'google_cloud_billing_budgets_v1beta1_threshold_rule.dart';

/// The set of arguments for Budget.
class BudgetBillingbudgetsV1beta1Args {
  /// Optional. Rules to apply to notifications sent based on budget spend and thresholds.
  final pulumi.Input<GoogleCloudBillingBudgetsV1beta1AllUpdatesRule>?
      allUpdatesRule;

  /// Budgeted amount.
  final pulumi.Input<GoogleCloudBillingBudgetsV1beta1BudgetAmount> amount;
  final pulumi.Input<String> billingAccountId;

  /// Optional. Filters that define which resources are used to compute the actual spend against the budget amount, such as projects, services, and the budget's time period, as well as other filters.
  final pulumi.Input<GoogleCloudBillingBudgetsV1beta1Filter>? budgetFilter;

  /// User data for display name in UI. Validation: <= 60 chars.
  final pulumi.Input<String>? displayName;

  /// Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag will cause an update to overwrite other changes.
  final pulumi.Input<String>? etag;
  final pulumi.Input<BudgetOwnershipScopeBillingbudgetsV1beta1>? ownershipScope;

  /// Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.
  final pulumi.Input<List<GoogleCloudBillingBudgetsV1beta1ThresholdRule>>?
      thresholdRules;

  BudgetBillingbudgetsV1beta1Args({
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
      map['allUpdatesRule'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudBillingBudgetsV1beta1AllUpdatesRule,
          Map<String, dynamic>>(allUpdatesRuleValue, (value) => value.toMap());
    }
    map['amount'] = pulumi.Input.mapInputValue<
        GoogleCloudBillingBudgetsV1beta1BudgetAmount,
        Map<String, dynamic>>(amount, (value) => value.toMap());
    map['billingAccountId'] = billingAccountId;
    final budgetFilterValue = budgetFilter;
    if (budgetFilterValue != null) {
      map['budgetFilter'] = pulumi.Input.mapOptionalInputValue<
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
      map['ownershipScope'] = pulumi.Input.mapOptionalInputValue<
          BudgetOwnershipScopeBillingbudgetsV1beta1,
          String>(ownershipScopeValue, (value) => value.value);
    }
    final thresholdRulesValue = thresholdRules;
    if (thresholdRulesValue != null) {
      map['thresholdRules'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudBillingBudgetsV1beta1ThresholdRule>,
              List<Map<String, dynamic>>>(
          thresholdRulesValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudBillingBudgetsV1beta1ThresholdRule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory BudgetBillingbudgetsV1beta1Args.fromMap(Map<String, dynamic> map) {
    return BudgetBillingbudgetsV1beta1Args(
      allUpdatesRule: pulumi.Input.asOptionalInput<
              GoogleCloudBillingBudgetsV1beta1AllUpdatesRule>(
          map['allUpdatesRule']),
      amount:
          pulumi.Input.asInput<GoogleCloudBillingBudgetsV1beta1BudgetAmount>(
              map['amount']),
      billingAccountId: pulumi.Input.asInput<String>(map['billingAccountId']),
      budgetFilter:
          pulumi.Input.asOptionalInput<GoogleCloudBillingBudgetsV1beta1Filter>(
              map['budgetFilter']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      ownershipScope: pulumi.Input.asOptionalInput<
          BudgetOwnershipScopeBillingbudgetsV1beta1>(map['ownershipScope']),
      thresholdRules: pulumi.Input.asOptionalInput<
              List<GoogleCloudBillingBudgetsV1beta1ThresholdRule>>(
          map['thresholdRules']),
    );
  }
}
