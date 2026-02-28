// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_auto_adjust_data.dart';
import 'budget_cost_filter.dart';
import 'budget_cost_types.dart';
import 'budget_filter_expression.dart';
import 'budget_notification.dart';
import 'budget_planned_limit.dart';

/// {@template pulumi_budgets_budget_budget_args_doc}
/// The set of arguments for Budget.
/// {@endtemplate}
/// {@macro pulumi_budgets_budget_budget_args_doc}
class BudgetArgs {
  /// The ID of the target account for budget. Will use current user's account_id by default if omitted.
  final pulumi.Input<String>? accountId;

  /// Object containing AutoAdjustData which determines the budget amount for an auto-adjusting budget.
  final pulumi.Input<BudgetAutoAdjustData>? autoAdjustData;

  /// ARN of the billing view.
  final pulumi.Input<String>? billingViewArn;

  /// Whether this budget tracks monetary cost or usage.
  final pulumi.Input<String> budgetType;

  /// A list of CostFilter name/values pair to apply to budget. Conflicts with `filter_expression`.
  final pulumi.Input<List<BudgetCostFilter>>? costFilters;

  /// Object containing CostTypes The types of cost included in a budget, such as tax and subscriptions.
  final pulumi.Input<BudgetCostTypes>? costTypes;

  /// Object containing Filter Expression to apply to budget. Conflicts with `cost_filter`.
  final pulumi.Input<BudgetFilterExpression>? filterExpression;

  /// The amount of cost or usage being measured for a budget.
  final pulumi.Input<String>? limitAmount;

  /// The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB. See [Spend](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/data-type-spend.html) documentation.
  final pulumi.Input<String>? limitUnit;

  /// The name of a budget. Unique within accounts.
  final pulumi.Input<String>? name;

  /// The prefix of the name of a budget. Unique within accounts.
  final pulumi.Input<String>? namePrefix;

  /// Object containing Budget Notifications. Can be used multiple times to define more than one budget notification.
  final pulumi.Input<List<BudgetNotification>>? notifications;

  /// Object containing Planned Budget Limits. Can be used multiple times to plan more than one budget limit. See [PlannedBudgetLimits](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_Budget.html#awscostmanagement-Type-budgets_Budget-PlannedBudgetLimits) documentation.
  final pulumi.Input<List<BudgetPlannedLimit>>? plannedLimits;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The end of the time period covered by the budget. There are no restrictions on the end date. Format: `2017-01-01_12:00`.
  final pulumi.Input<String>? timePeriodEnd;

  /// The start of the time period covered by the budget. If you don't specify a start date, AWS defaults to the start of your chosen time period. The start date must come before the end date. Format: `2017-01-01_12:00`.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official
  /// documentation](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/data-type-budget.html).
  final pulumi.Input<String>? timePeriodStart;

  /// The length of time until a budget resets the actual and forecasted spend. Valid values: `MONTHLY`, `QUARTERLY`, `ANNUALLY`, and `DAILY`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> timeUnit;

  /// Creates a new [BudgetArgs].
  /// [accountId] The ID of the target account for budget. Will use current user's account_id by default if omitted.
  /// [autoAdjustData] Object containing AutoAdjustData which determines the budget amount for an auto-adjusting budget.
  /// [billingViewArn] ARN of the billing view.
  /// [budgetType] Whether this budget tracks monetary cost or usage.
  /// [costFilters] A list of CostFilter name/values pair to apply to budget. Conflicts with `filter_expression`.
  /// [costTypes] Object containing CostTypes The types of cost included in a budget, such as tax and subscriptions.
  /// [filterExpression] Object containing Filter Expression to apply to budget. Conflicts with `cost_filter`.
  /// [limitAmount] The amount of cost or usage being measured for a budget.
  /// [limitUnit] The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB. See [Spend](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/data-type-spend.html) documentation.
  /// [name] The name of a budget. Unique within accounts.
  /// [namePrefix] The prefix of the name of a budget. Unique within accounts.
  /// [notifications] Object containing Budget Notifications. Can be used multiple times to define more than one budget notification.
  /// [plannedLimits] Object containing Planned Budget Limits. Can be used multiple times to plan more than one budget limit. See [PlannedBudgetLimits](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_Budget.html#awscostmanagement-Type-budgets_Budget-PlannedBudgetLimits) documentation.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timePeriodEnd] The end of the time period covered by the budget. There are no restrictions on the end date. Format: `2017-01-01_12:00`.
  /// [timePeriodStart] The start of the time period covered by the budget. If you don't specify a start date, AWS defaults to the start of your chosen time period. The start date must come before the end date. Format: `2017-01-01_12:00`.
  /// [timeUnit] The length of time until a budget resets the actual and forecasted spend. Valid values: `MONTHLY`, `QUARTERLY`, `ANNUALLY`, and `DAILY`.
  BudgetArgs({
    String? accountId,
    BudgetAutoAdjustData? autoAdjustData,
    String? billingViewArn,
    required String budgetType,
    List<BudgetCostFilter>? costFilters,
    BudgetCostTypes? costTypes,
    BudgetFilterExpression? filterExpression,
    String? limitAmount,
    String? limitUnit,
    String? name,
    String? namePrefix,
    List<BudgetNotification>? notifications,
    List<BudgetPlannedLimit>? plannedLimits,
    Map<String, String>? tags,
    String? timePeriodEnd,
    String? timePeriodStart,
    required String timeUnit,
  })  : accountId = pulumi.Input.asOptionalInput<String>(accountId),
        autoAdjustData =
            pulumi.Input.asOptionalInput<BudgetAutoAdjustData>(autoAdjustData),
        billingViewArn = pulumi.Input.asOptionalInput<String>(billingViewArn),
        budgetType = pulumi.Input.asInput<String>(budgetType),
        costFilters =
            pulumi.Input.asOptionalInput<List<BudgetCostFilter>>(costFilters),
        costTypes = pulumi.Input.asOptionalInput<BudgetCostTypes>(costTypes),
        filterExpression = pulumi.Input.asOptionalInput<BudgetFilterExpression>(
            filterExpression),
        limitAmount = pulumi.Input.asOptionalInput<String>(limitAmount),
        limitUnit = pulumi.Input.asOptionalInput<String>(limitUnit),
        name = pulumi.Input.asOptionalInput<String>(name),
        namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
        notifications = pulumi.Input.asOptionalInput<List<BudgetNotification>>(
            notifications),
        plannedLimits = pulumi.Input.asOptionalInput<List<BudgetPlannedLimit>>(
            plannedLimits),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        timePeriodEnd = pulumi.Input.asOptionalInput<String>(timePeriodEnd),
        timePeriodStart = pulumi.Input.asOptionalInput<String>(timePeriodStart),
        timeUnit = pulumi.Input.asInput<String>(timeUnit);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    final autoAdjustDataValue = autoAdjustData;
    if (autoAdjustDataValue != null) {
      map['autoAdjustData'] = pulumi.Input.mapOptionalInputValue<
          BudgetAutoAdjustData,
          Map<String, dynamic>>(autoAdjustDataValue, (value) => value.toMap());
    }
    final billingViewArnValue = billingViewArn;
    if (billingViewArnValue != null) {
      map['billingViewArn'] = billingViewArnValue;
    }
    map['budgetType'] = budgetType;
    final costFiltersValue = costFilters;
    if (costFiltersValue != null) {
      map['costFilters'] = pulumi.Input.mapOptionalInputValue<
              List<BudgetCostFilter>, List<Map<String, dynamic>>>(
          costFiltersValue,
          (value) =>
              pulumi.Input.encodeList<BudgetCostFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final costTypesValue = costTypes;
    if (costTypesValue != null) {
      map['costTypes'] = pulumi.Input.mapOptionalInputValue<BudgetCostTypes,
          Map<String, dynamic>>(costTypesValue, (value) => value.toMap());
    }
    final filterExpressionValue = filterExpression;
    if (filterExpressionValue != null) {
      map['filterExpression'] = pulumi.Input.mapOptionalInputValue<
              BudgetFilterExpression, Map<String, dynamic>>(
          filterExpressionValue, (value) => value.toMap());
    }
    final limitAmountValue = limitAmount;
    if (limitAmountValue != null) {
      map['limitAmount'] = limitAmountValue;
    }
    final limitUnitValue = limitUnit;
    if (limitUnitValue != null) {
      map['limitUnit'] = limitUnitValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final notificationsValue = notifications;
    if (notificationsValue != null) {
      map['notifications'] = pulumi.Input.mapOptionalInputValue<
              List<BudgetNotification>, List<Map<String, dynamic>>>(
          notificationsValue,
          (value) =>
              pulumi.Input.encodeList<BudgetNotification, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final plannedLimitsValue = plannedLimits;
    if (plannedLimitsValue != null) {
      map['plannedLimits'] = pulumi.Input.mapOptionalInputValue<
              List<BudgetPlannedLimit>, List<Map<String, dynamic>>>(
          plannedLimitsValue,
          (value) =>
              pulumi.Input.encodeList<BudgetPlannedLimit, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timePeriodEndValue = timePeriodEnd;
    if (timePeriodEndValue != null) {
      map['timePeriodEnd'] = timePeriodEndValue;
    }
    final timePeriodStartValue = timePeriodStart;
    if (timePeriodStartValue != null) {
      map['timePeriodStart'] = timePeriodStartValue;
    }
    map['timeUnit'] = timeUnit;
    return map;
  }

  factory BudgetArgs.fromMap(Map<String, dynamic> map) {
    return BudgetArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      autoAdjustData: map['autoAdjustData'] == null
          ? null
          : BudgetAutoAdjustData.fromMap(
              (map['autoAdjustData'] as Map).cast<String, dynamic>()),
      billingViewArn: map['billingViewArn'] == null
          ? null
          : map['billingViewArn'] as String,
      budgetType: map['budgetType'] as String,
      costFilters: map['costFilters'] == null
          ? null
          : pulumi.Input.decodeList<BudgetCostFilter>(
              map['costFilters'],
              (value) => BudgetCostFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      costTypes: map['costTypes'] == null
          ? null
          : BudgetCostTypes.fromMap(
              (map['costTypes'] as Map).cast<String, dynamic>()),
      filterExpression: map['filterExpression'] == null
          ? null
          : BudgetFilterExpression.fromMap(
              (map['filterExpression'] as Map).cast<String, dynamic>()),
      limitAmount:
          map['limitAmount'] == null ? null : map['limitAmount'] as String,
      limitUnit: map['limitUnit'] == null ? null : map['limitUnit'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix:
          map['namePrefix'] == null ? null : map['namePrefix'] as String,
      notifications: map['notifications'] == null
          ? null
          : pulumi.Input.decodeList<BudgetNotification>(
              map['notifications'],
              (value) => BudgetNotification.fromMap(
                  (value as Map).cast<String, dynamic>())),
      plannedLimits: map['plannedLimits'] == null
          ? null
          : pulumi.Input.decodeList<BudgetPlannedLimit>(
              map['plannedLimits'],
              (value) => BudgetPlannedLimit.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timePeriodEnd:
          map['timePeriodEnd'] == null ? null : map['timePeriodEnd'] as String,
      timePeriodStart: map['timePeriodStart'] == null
          ? null
          : map['timePeriodStart'] as String,
      timeUnit: map['timeUnit'] as String,
    );
  }
}
