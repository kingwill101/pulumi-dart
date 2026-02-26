import 'package:pulumi/pulumi.dart';
import 'budget_args2.dart';
import 'google_cloud_billing_budgets_v1beta1_all_updates_rule_response.dart';
import 'google_cloud_billing_budgets_v1beta1_budget_amount_response.dart';
import 'google_cloud_billing_budgets_v1beta1_filter_response.dart';
import 'google_cloud_billing_budgets_v1beta1_threshold_rule_response.dart';

/// Creates a new budget. See [Quotas and limits](https://cloud.google.com/billing/quotas) for more information on the limits of the number of budgets you can create.
/// Auto-naming is currently not supported for this resource.
class Budget2 extends CustomResource {
  /// Optional. Rules to apply to notifications sent based on budget spend and thresholds.
  late final Output<GoogleCloudBillingBudgetsV1beta1AllUpdatesRuleResponse>
      allUpdatesRule;

  /// Budgeted amount.
  late final Output<GoogleCloudBillingBudgetsV1beta1BudgetAmountResponse>
      amount;
  late final Output<String> billingAccountId;

  /// Optional. Filters that define which resources are used to compute the actual spend against the budget amount, such as projects, services, and the budget's time period, as well as other filters.
  late final Output<GoogleCloudBillingBudgetsV1beta1FilterResponse>
      budgetFilter;

  /// User data for display name in UI. Validation: <= 60 chars.
  late final Output<String> displayName;

  /// Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag will cause an update to overwrite other changes.
  late final Output<String> etag;

  /// Resource name of the budget. The resource name implies the scope of a budget. Values are of the form `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
  late final Output<String> name;
  late final Output<String> ownershipScope;

  /// Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.
  late final Output<List<GoogleCloudBillingBudgetsV1beta1ThresholdRuleResponse>>
      thresholdRules;

  Budget2(
    String name, {
    BudgetArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:billingbudgets/v1beta1:Budget',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allUpdatesRule = Output.createUnknown<
        GoogleCloudBillingBudgetsV1beta1AllUpdatesRuleResponse>();
    this.amount = Output.createUnknown<
        GoogleCloudBillingBudgetsV1beta1BudgetAmountResponse>();
    this.billingAccountId = Output.createUnknown<String>();
    this.budgetFilter =
        Output.createUnknown<GoogleCloudBillingBudgetsV1beta1FilterResponse>();
    this.displayName = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.ownershipScope = Output.createUnknown<String>();
    this.thresholdRules = Output.createUnknown<
        List<GoogleCloudBillingBudgetsV1beta1ThresholdRuleResponse>>();
  }
}
