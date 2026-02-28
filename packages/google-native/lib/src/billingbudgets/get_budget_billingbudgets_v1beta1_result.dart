// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_billing_budgets_v1beta1_all_updates_rule_response.dart';
import 'google_cloud_billing_budgets_v1beta1_budget_amount_response.dart';
import 'google_cloud_billing_budgets_v1beta1_filter_response.dart';
import 'google_cloud_billing_budgets_v1beta1_threshold_rule_response.dart';

/// Result data returned by getBudget.
class GetBudgetBillingbudgetsV1beta1Result {
  /// Optional. Rules to apply to notifications sent based on budget spend and thresholds.
  final GoogleCloudBillingBudgetsV1beta1AllUpdatesRuleResponse allUpdatesRule;

  /// Budgeted amount.
  final GoogleCloudBillingBudgetsV1beta1BudgetAmountResponse amount;

  /// Optional. Filters that define which resources are used to compute the actual spend against the budget amount, such as projects, services, and the budget's time period, as well as other filters.
  final GoogleCloudBillingBudgetsV1beta1FilterResponse budgetFilter;

  /// User data for display name in UI. Validation: <= 60 chars.
  final String displayName;

  /// Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag will cause an update to overwrite other changes.
  final String etag;

  /// Resource name of the budget. The resource name implies the scope of a budget. Values are of the form `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
  final String name;
  final String ownershipScope;

  /// Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.
  final List<GoogleCloudBillingBudgetsV1beta1ThresholdRuleResponse>
      thresholdRules;

  /// Creates a new [GetBudgetBillingbudgetsV1beta1Result].
  /// [allUpdatesRule] Optional. Rules to apply to notifications sent based on budget spend and thresholds.
  /// [amount] Budgeted amount.
  /// [budgetFilter] Optional. Filters that define which resources are used to compute the actual spend against the budget amount, such as projects, services, and the budget's time period, as well as other filters.
  /// [displayName] User data for display name in UI. Validation: <= 60 chars.
  /// [etag] Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag will cause an update to overwrite other changes.
  /// [name] Resource name of the budget. The resource name implies the scope of a budget. Values are of the form `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
  /// [ownershipScope] Required.
  /// [thresholdRules] Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.
  GetBudgetBillingbudgetsV1beta1Result({
    required this.allUpdatesRule,
    required this.amount,
    required this.budgetFilter,
    required this.displayName,
    required this.etag,
    required this.name,
    required this.ownershipScope,
    required this.thresholdRules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allUpdatesRule'] = allUpdatesRule.toMap();
    map['amount'] = amount.toMap();
    map['budgetFilter'] = budgetFilter.toMap();
    map['displayName'] = displayName;
    map['etag'] = etag;
    map['name'] = name;
    map['ownershipScope'] = ownershipScope;
    map['thresholdRules'] = pulumi.Input.encodeList<
        GoogleCloudBillingBudgetsV1beta1ThresholdRuleResponse,
        Map<String, dynamic>>(thresholdRules, (value) => value.toMap());
    return map;
  }

  factory GetBudgetBillingbudgetsV1beta1Result.fromMap(
      Map<String, dynamic> map) {
    return GetBudgetBillingbudgetsV1beta1Result(
      allUpdatesRule:
          GoogleCloudBillingBudgetsV1beta1AllUpdatesRuleResponse.fromMap(
              (map['allUpdatesRule'] as Map).cast<String, dynamic>()),
      amount: GoogleCloudBillingBudgetsV1beta1BudgetAmountResponse.fromMap(
          (map['amount'] as Map).cast<String, dynamic>()),
      budgetFilter: GoogleCloudBillingBudgetsV1beta1FilterResponse.fromMap(
          (map['budgetFilter'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      name: map['name'] as String,
      ownershipScope: map['ownershipScope'] as String,
      thresholdRules: pulumi.Input.decodeList<
              GoogleCloudBillingBudgetsV1beta1ThresholdRuleResponse>(
          map['thresholdRules'],
          (value) =>
              GoogleCloudBillingBudgetsV1beta1ThresholdRuleResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
