import 'package:pulumi/pulumi.dart';
import '../budget_auto_adjust_data/budget_auto_adjust_data.dart';
import '../budget_cost_filter/budget_cost_filter.dart';
import '../budget_cost_types/budget_cost_types.dart';
import '../budget_filter_expression/budget_filter_expression.dart';
import '../budget_notification/budget_notification.dart';
import '../budget_planned_limit/budget_planned_limit.dart';
import 'budget_args.dart';

/// Provides a budgets budget resource. Budgets use the cost visualization provided by Cost Explorer to show you the status of your budgets, to provide forecasts of your estimated costs, and to track your AWS usage, including your free tier usage.
///
/// ## Example Usage
///
///
///
/// Create a budget for *$100*.
///
///
///
/// Create a budget with planned budget limits.
///
///
///
/// Create a budget for s3 with a limit of *3 GB* of storage.
///
///
///
/// Create a Savings Plan Utilization Budget
///
///
///
/// Create a RI Utilization Budget
///
///
///
/// Create a cost filter using resource tags
///
///
///
/// Create a cost filter using resource tags, obtaining the tag value from a variable
///
///
///
/// Create a budget with a simple dimension filter
///
///
///
/// Create a budget with AND filter
///
///
///
/// Create a budget with OR filter
///
///
///
/// Create a budget with NOT filter
///
///
///
/// Create a budget with a compound filter
///
///
///
/// ## Import
///
/// Using `pulumi import`, import budgets using `AccountID:BudgetName`. For example:
///
/// ```sh
/// $ pulumi import aws:budgets/budget:Budget myBudget 123456789012:myBudget
/// ```
class Budget extends CustomResource {
  /// The ID of the target account for budget. Will use current user's account_id by default if omitted.
  late final Output<String> accountId;

  /// The ARN of the budget.
  late final Output<String> arn;

  /// Object containing AutoAdjustData which determines the budget amount for an auto-adjusting budget.
  late final Output<BudgetAutoAdjustData?> autoAdjustData;

  /// ARN of the billing view.
  late final Output<String?> billingViewArn;

  /// Whether this budget tracks monetary cost or usage.
  late final Output<String> budgetType;

  /// A list of CostFilter name/values pair to apply to budget. Conflicts with `filter_expression`.
  late final Output<List<BudgetCostFilter>> costFilters;

  /// Object containing CostTypes The types of cost included in a budget, such as tax and subscriptions.
  late final Output<BudgetCostTypes> costTypes;

  /// Object containing Filter Expression to apply to budget. Conflicts with `cost_filter`.
  late final Output<BudgetFilterExpression?> filterExpression;

  /// The amount of cost or usage being measured for a budget.
  late final Output<String> limitAmount;

  /// The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB. See [Spend](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/data-type-spend.html) documentation.
  late final Output<String> limitUnit;

  /// The name of a budget. Unique within accounts.
  late final Output<String> name;

  /// The prefix of the name of a budget. Unique within accounts.
  late final Output<String> namePrefix;

  /// Object containing Budget Notifications. Can be used multiple times to define more than one budget notification.
  late final Output<List<BudgetNotification>?> notifications;

  /// Object containing Planned Budget Limits. Can be used multiple times to plan more than one budget limit. See [PlannedBudgetLimits](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_Budget.html#awscostmanagement-Type-budgets_Budget-PlannedBudgetLimits) documentation.
  late final Output<List<BudgetPlannedLimit>?> plannedLimits;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The end of the time period covered by the budget. There are no restrictions on the end date. Format: `2017-01-01_12:00`.
  late final Output<String?> timePeriodEnd;

  /// The start of the time period covered by the budget. If you don't specify a start date, AWS defaults to the start of your chosen time period. The start date must come before the end date. Format: `2017-01-01_12:00`.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official
  /// documentation](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/data-type-budget.html).
  late final Output<String> timePeriodStart;

  /// The length of time until a budget resets the actual and forecasted spend. Valid values: `MONTHLY`, `QUARTERLY`, `ANNUALLY`, and `DAILY`.
  ///
  /// The following arguments are optional:
  late final Output<String> timeUnit;

  Budget(
    String name, {
    BudgetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:budgets/budget:Budget',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.arn = registerOutput<String>('arn');
    this.autoAdjustData =
        registerOutput<BudgetAutoAdjustData?>('autoAdjustData');
    this.billingViewArn = registerOutput<String?>('billingViewArn');
    this.budgetType = registerOutput<String>('budgetType');
    this.costFilters = registerOutput<List<BudgetCostFilter>>('costFilters');
    this.costTypes = registerOutput<BudgetCostTypes>('costTypes');
    this.filterExpression =
        registerOutput<BudgetFilterExpression?>('filterExpression');
    this.limitAmount = registerOutput<String>('limitAmount');
    this.limitUnit = registerOutput<String>('limitUnit');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.notifications =
        registerOutput<List<BudgetNotification>?>('notifications');
    this.plannedLimits =
        registerOutput<List<BudgetPlannedLimit>?>('plannedLimits');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timePeriodEnd = registerOutput<String?>('timePeriodEnd');
    this.timePeriodStart = registerOutput<String>('timePeriodStart');
    this.timeUnit = registerOutput<String>('timeUnit');
  }
}
