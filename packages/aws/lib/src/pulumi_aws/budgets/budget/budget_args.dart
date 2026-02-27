// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../budget_auto_adjust_data/budget_auto_adjust_data.dart';
import '../budget_cost_filter/budget_cost_filter.dart';
import '../budget_cost_types/budget_cost_types.dart';
import '../budget_filter_expression/budget_filter_expression.dart';
import '../budget_notification/budget_notification.dart';
import '../budget_planned_limit/budget_planned_limit.dart';

/// The set of arguments for Budget.
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

  BudgetArgs({
    this.accountId,
    this.autoAdjustData,
    this.billingViewArn,
    required this.budgetType,
    this.costFilters,
    this.costTypes,
    this.filterExpression,
    this.limitAmount,
    this.limitUnit,
    this.name,
    this.namePrefix,
    this.notifications,
    this.plannedLimits,
    this.tags,
    this.timePeriodEnd,
    this.timePeriodStart,
    required this.timeUnit,
  });

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
      accountId: pulumi.Input.asOptionalInput<String>(map['accountId']),
      autoAdjustData: pulumi.Input.asOptionalInput<BudgetAutoAdjustData>(
          map['autoAdjustData']),
      billingViewArn:
          pulumi.Input.asOptionalInput<String>(map['billingViewArn']),
      budgetType: pulumi.Input.asInput<String>(map['budgetType']),
      costFilters: pulumi.Input.asOptionalInput<List<BudgetCostFilter>>(
          map['costFilters']),
      costTypes:
          pulumi.Input.asOptionalInput<BudgetCostTypes>(map['costTypes']),
      filterExpression: pulumi.Input.asOptionalInput<BudgetFilterExpression>(
          map['filterExpression']),
      limitAmount: pulumi.Input.asOptionalInput<String>(map['limitAmount']),
      limitUnit: pulumi.Input.asOptionalInput<String>(map['limitUnit']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      notifications: pulumi.Input.asOptionalInput<List<BudgetNotification>>(
          map['notifications']),
      plannedLimits: pulumi.Input.asOptionalInput<List<BudgetPlannedLimit>>(
          map['plannedLimits']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timePeriodEnd: pulumi.Input.asOptionalInput<String>(map['timePeriodEnd']),
      timePeriodStart:
          pulumi.Input.asOptionalInput<String>(map['timePeriodStart']),
      timeUnit: pulumi.Input.asInput<String>(map['timeUnit']),
    );
  }
}
