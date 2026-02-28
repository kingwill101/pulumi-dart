import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_billingbudgets_v1beta1_args.dart';
import 'google_cloud_billing_budgets_v1beta1_all_updates_rule_response.dart';
import 'google_cloud_billing_budgets_v1beta1_budget_amount_response.dart';
import 'google_cloud_billing_budgets_v1beta1_filter_response.dart';
import 'google_cloud_billing_budgets_v1beta1_threshold_rule_response.dart';

/// Creates a new budget. See [Quotas and limits](https://cloud.google.com/billing/quotas) for more information on the limits of the number of budgets you can create.
/// Auto-naming is currently not supported for this resource.
class BudgetBillingbudgetsV1beta1 extends pulumi.CustomResource {
  /// Optional. Rules to apply to notifications sent based on budget spend and thresholds.
  late final pulumi.Output<GoogleCloudBillingBudgetsV1beta1AllUpdatesRuleResponse> allUpdatesRule;
  /// Budgeted amount.
  late final pulumi.Output<GoogleCloudBillingBudgetsV1beta1BudgetAmountResponse> amount;
  late final pulumi.Output<String> billingAccountId;
  /// Optional. Filters that define which resources are used to compute the actual spend against the budget amount, such as projects, services, and the budget's time period, as well as other filters.
  late final pulumi.Output<GoogleCloudBillingBudgetsV1beta1FilterResponse> budgetFilter;
  /// User data for display name in UI. Validation: <= 60 chars.
  late final pulumi.Output<String> displayName;
  /// Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag will cause an update to overwrite other changes.
  late final pulumi.Output<String> etag;
  /// Resource name of the budget. The resource name implies the scope of a budget. Values are of the form `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> ownershipScope;
  /// Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.
  late final pulumi.Output<List<GoogleCloudBillingBudgetsV1beta1ThresholdRuleResponse>> thresholdRules;

  /// Creates a new [BudgetBillingbudgetsV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BudgetBillingbudgetsV1beta1]. {@macro pulumi_billingbudgets_v1beta1_budget_billingbudgets_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BudgetBillingbudgetsV1beta1(
    String name, {
    BudgetBillingbudgetsV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:billingbudgets/v1beta1:Budget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allUpdatesRule = registerOutput<GoogleCloudBillingBudgetsV1beta1AllUpdatesRuleResponse>('allUpdatesRule');
    this.amount = registerOutput<GoogleCloudBillingBudgetsV1beta1BudgetAmountResponse>('amount');
    this.billingAccountId = registerOutput<String>('billingAccountId');
    this.budgetFilter = registerOutput<GoogleCloudBillingBudgetsV1beta1FilterResponse>('budgetFilter');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.ownershipScope = registerOutput<String>('ownershipScope');
    this.thresholdRules = registerOutput<List<GoogleCloudBillingBudgetsV1beta1ThresholdRuleResponse>>('thresholdRules');
  }
}
