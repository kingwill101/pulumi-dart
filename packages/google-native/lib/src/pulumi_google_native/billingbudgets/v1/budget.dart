import 'package:pulumi/pulumi.dart';
import 'budget_args.dart';
import 'google_cloud_billing_budgets_v1_budget_amount_response.dart';
import 'google_cloud_billing_budgets_v1_filter_response.dart';
import 'google_cloud_billing_budgets_v1_notifications_rule_response.dart';
import 'google_cloud_billing_budgets_v1_threshold_rule_response.dart';

/// Creates a new budget. See [Quotas and limits](https://cloud.google.com/billing/quotas) for more information on the limits of the number of budgets you can create.
/// Auto-naming is currently not supported for this resource.
class Budget extends CustomResource {
  /// Budgeted amount.
  late final Output<GoogleCloudBillingBudgetsV1BudgetAmountResponse> amount;
  late final Output<String> billingAccountId;

  /// Optional. Filters that define which resources are used to compute the actual spend against the budget amount, such as projects, services, and the budget's time period, as well as other filters.
  late final Output<GoogleCloudBillingBudgetsV1FilterResponse> budgetFilter;

  /// User data for display name in UI. The name must be less than or equal to 60 characters.
  late final Output<String> displayName;

  /// Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag causes an update to overwrite other changes.
  late final Output<String> etag;

  /// Resource name of the budget. The resource name implies the scope of a budget. Values are of the form `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
  late final Output<String> name;

  /// Optional. Rules to apply to notifications sent based on budget spend and thresholds.
  late final Output<GoogleCloudBillingBudgetsV1NotificationsRuleResponse>
      notificationsRule;
  late final Output<String> ownershipScope;

  /// Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.
  late final Output<List<GoogleCloudBillingBudgetsV1ThresholdRuleResponse>>
      thresholdRules;

  Budget(
    String name, {
    BudgetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:billingbudgets/v1:Budget',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.amount =
        Output.createUnknown<GoogleCloudBillingBudgetsV1BudgetAmountResponse>();
    this.billingAccountId = Output.createUnknown<String>();
    this.budgetFilter =
        Output.createUnknown<GoogleCloudBillingBudgetsV1FilterResponse>();
    this.displayName = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.notificationsRule = Output.createUnknown<
        GoogleCloudBillingBudgetsV1NotificationsRuleResponse>();
    this.ownershipScope = Output.createUnknown<String>();
    this.thresholdRules = Output.createUnknown<
        List<GoogleCloudBillingBudgetsV1ThresholdRuleResponse>>();
  }
}
