import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_args.dart';
import 'google_cloud_billing_budgets_v1_budget_amount_response.dart';
import 'google_cloud_billing_budgets_v1_filter_response.dart';
import 'google_cloud_billing_budgets_v1_notifications_rule_response.dart';
import 'google_cloud_billing_budgets_v1_threshold_rule_response.dart';

/// Creates a new budget. See [Quotas and limits](https://cloud.google.com/billing/quotas) for more information on the limits of the number of budgets you can create.
/// Auto-naming is currently not supported for this resource.
class Budget extends pulumi.CustomResource {
  /// Budgeted amount.
  late final pulumi.Output<GoogleCloudBillingBudgetsV1BudgetAmountResponse> amount;
  late final pulumi.Output<String> billingAccountId;
  /// Optional. Filters that define which resources are used to compute the actual spend against the budget amount, such as projects, services, and the budget's time period, as well as other filters.
  late final pulumi.Output<GoogleCloudBillingBudgetsV1FilterResponse> budgetFilter;
  /// User data for display name in UI. The name must be less than or equal to 60 characters.
  late final pulumi.Output<String> displayName;
  /// Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag causes an update to overwrite other changes.
  late final pulumi.Output<String> etag;
  /// Resource name of the budget. The resource name implies the scope of a budget. Values are of the form `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
  late final pulumi.Output<String> name;
  /// Optional. Rules to apply to notifications sent based on budget spend and thresholds.
  late final pulumi.Output<GoogleCloudBillingBudgetsV1NotificationsRuleResponse> notificationsRule;
  late final pulumi.Output<String> ownershipScope;
  /// Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.
  late final pulumi.Output<List<GoogleCloudBillingBudgetsV1ThresholdRuleResponse>> thresholdRules;

  /// Creates a new [Budget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Budget]. {@macro pulumi_billingbudgets_v1_budget_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Budget(
    String name, {
    BudgetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:billingbudgets/v1:Budget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.amount = registerOutput<GoogleCloudBillingBudgetsV1BudgetAmountResponse>('amount');
    this.billingAccountId = registerOutput<String>('billingAccountId');
    this.budgetFilter = registerOutput<GoogleCloudBillingBudgetsV1FilterResponse>('budgetFilter');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.notificationsRule = registerOutput<GoogleCloudBillingBudgetsV1NotificationsRuleResponse>('notificationsRule');
    this.ownershipScope = registerOutput<String>('ownershipScope');
    this.thresholdRules = registerOutput<List<GoogleCloudBillingBudgetsV1ThresholdRuleResponse>>('thresholdRules');
  }
}
