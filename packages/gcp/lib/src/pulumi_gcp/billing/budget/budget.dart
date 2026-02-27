import 'package:pulumi/pulumi.dart';
import '../budget_all_updates_rule/budget_all_updates_rule.dart';
import '../budget_amount/budget_amount.dart';
import '../budget_budget_filter/budget_budget_filter.dart';
import '../budget_threshold_rule/budget_threshold_rule.dart';
import 'budget_args.dart';

/// Budget configuration for a billing account.
///
///
/// To get more information about Budget, see:
///
/// * [API documentation](https://cloud.google.com/billing/docs/reference/budget/rest/v1/billingAccounts.budgets)
/// * How-to Guides
/// * [Creating a budget](https://cloud.google.com/billing/docs/how-to/budgets)
///
/// > **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a `billing_project` and set `user_project_override` to true
/// in the provider configuration. Otherwise the Billing Budgets API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billing_project` you defined.
///
/// ## Example Usage
///
/// ### Billing Budget Basic
///
///
///
/// ### Billing Budget Lastperiod
///
///
///
/// ### Billing Budget Filter
///
///
///
/// ### Billing Budget Notify
///
///
///
/// ### Billing Budget Notify Project Recipient
///
///
///
/// ### Billing Budget Customperiod
///
///
///
///
/// ## Import
///
/// Budget can be imported using any of these accepted formats:
///
/// * `billingAccounts/{{billing_account}}/budgets/{{name}}`
///
/// * `{{billing_account}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Budget can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:billing/budget:Budget default billingAccounts/{{billing_account}}/budgets/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:billing/budget:Budget default {{billing_account}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:billing/budget:Budget default {{name}}
/// ```
class Budget extends CustomResource {
  /// Defines notifications that are sent on every update to the
  /// billing account's spend, regardless of the thresholds defined
  /// using threshold rules.
  /// Structure is documented below.
  late final Output<BudgetAllUpdatesRule?> allUpdatesRule;

  /// The budgeted amount for each usage period.
  /// Structure is documented below.
  late final Output<BudgetAmount> amount;

  /// ID of the billing account to set a budget on.
  late final Output<String> billingAccount;

  /// Filters that define which resources are used to compute the actual
  /// spend against the budget.
  /// Structure is documented below.
  late final Output<BudgetBudgetFilter> budgetFilter;

  /// User data for display name in UI. Must be <= 60 chars.
  late final Output<String?> displayName;

  /// Resource name of the budget. The resource name
  /// implies the scope of a budget. Values are of the form
  /// billingAccounts/{billingAccountId}/budgets/{budgetId}.
  late final Output<String> name;

  /// The ownership scope of the budget. The ownership scope and users'
  /// IAM permissions determine who has full access to the budget's data.
  /// Possible values are: `OWNERSHIP_SCOPE_UNSPECIFIED`, `ALL_USERS`, `BILLING_ACCOUNT`.
  late final Output<String?> ownershipScope;

  /// Rules that trigger alerts (notifications of thresholds being
  /// crossed) when spend exceeds the specified percentages of the
  /// budget.
  /// Structure is documented below.
  late final Output<List<BudgetThresholdRule>?> thresholdRules;

  Budget(
    String name, {
    BudgetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:billing/budget:Budget',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allUpdatesRule =
        registerOutput<BudgetAllUpdatesRule?>('allUpdatesRule');
    this.amount = registerOutput<BudgetAmount>('amount');
    this.billingAccount = registerOutput<String>('billingAccount');
    this.budgetFilter = registerOutput<BudgetBudgetFilter>('budgetFilter');
    this.displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    this.ownershipScope = registerOutput<String?>('ownershipScope');
    this.thresholdRules =
        registerOutput<List<BudgetThresholdRule>?>('thresholdRules');
  }
}
