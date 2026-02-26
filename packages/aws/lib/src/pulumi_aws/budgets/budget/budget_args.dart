// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../budget_auto_adjust_data/budget_auto_adjust_data.dart';
import '../budget_cost_filter/budget_cost_filter.dart';
import '../budget_cost_types/budget_cost_types.dart';
import '../budget_filter_expression/budget_filter_expression.dart';
import '../budget_notification/budget_notification.dart';
import '../budget_planned_limit/budget_planned_limit.dart';

/// The set of arguments for Budget.
class BudgetArgs {
  /// The ID of the target account for budget. Will use current user's<span pulumi-lang-nodejs=" accountId " pulumi-lang-dotnet=" AccountId " pulumi-lang-go=" accountId " pulumi-lang-python=" account_id " pulumi-lang-yaml=" accountId " pulumi-lang-java=" accountId "> account_id </span>by default if omitted.
  final Input<String>? accountId;

  /// Object containing AutoAdjustData which determines the budget amount for an auto-adjusting budget.
  final Input<BudgetAutoAdjustData>? autoAdjustData;

  /// ARN of the billing view.
  final Input<String>? billingViewArn;

  /// Whether this budget tracks monetary cost or usage.
  final Input<String> budgetType;

  /// A list of CostFilter name/values pair to apply to budget. Conflicts with <span pulumi-lang-nodejs="`filterExpression`" pulumi-lang-dotnet="`FilterExpression`" pulumi-lang-go="`filterExpression`" pulumi-lang-python="`filter_expression`" pulumi-lang-yaml="`filterExpression`" pulumi-lang-java="`filterExpression`">`filter_expression`</span>.
  final Input<List<BudgetCostFilter>>? costFilters;

  /// Object containing CostTypes The types of cost included in a budget, such as tax and subscriptions.
  final Input<BudgetCostTypes>? costTypes;

  /// Object containing Filter Expression to apply to budget. Conflicts with <span pulumi-lang-nodejs="`costFilter`" pulumi-lang-dotnet="`CostFilter`" pulumi-lang-go="`costFilter`" pulumi-lang-python="`cost_filter`" pulumi-lang-yaml="`costFilter`" pulumi-lang-java="`costFilter`">`cost_filter`</span>.
  final Input<BudgetFilterExpression>? filterExpression;

  /// The amount of cost or usage being measured for a budget.
  final Input<String>? limitAmount;

  /// The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB. See [Spend](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/data-type-spend.html) documentation.
  final Input<String>? limitUnit;

  /// The name of a budget. Unique within accounts.
  final Input<String>? name;

  /// The prefix of the name of a budget. Unique within accounts.
  final Input<String>? namePrefix;

  /// Object containing Budget Notifications. Can be used multiple times to define more than one budget notification.
  final Input<List<BudgetNotification>>? notifications;

  /// Object containing Planned Budget Limits. Can be used multiple times to plan more than one budget limit. See [PlannedBudgetLimits](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_Budget.html#awscostmanagement-Type-budgets_Budget-PlannedBudgetLimits) documentation.
  final Input<List<BudgetPlannedLimit>>? plannedLimits;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The end of the time period covered by the budget. There are no restrictions on the end date. Format: `2017-01-01_12:00`.
  final Input<String>? timePeriodEnd;

  /// The start of the time period covered by the budget. If you don't specify a start date, AWS defaults to the start of your chosen time period. The start date must come before the end date. Format: `2017-01-01_12:00`.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official
  /// documentation](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/data-type-budget.html).
  final Input<String>? timePeriodStart;

  /// The length of time until a budget resets the actual and forecasted spend. Valid values: `MONTHLY`, `QUARTERLY`, `ANNUALLY`, and `DAILY`.
  ///
  /// The following arguments are optional:
  final Input<String> timeUnit;

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
      map['autoAdjustData'] = Input.mapOptionalInputValue<BudgetAutoAdjustData,
          Map<String, dynamic>>(autoAdjustDataValue, (value) => value.toMap());
    }
    final billingViewArnValue = billingViewArn;
    if (billingViewArnValue != null) {
      map['billingViewArn'] = billingViewArnValue;
    }
    map['budgetType'] = budgetType;
    final costFiltersValue = costFilters;
    if (costFiltersValue != null) {
      map['costFilters'] = Input.mapOptionalInputValue<List<BudgetCostFilter>,
              List<Map<String, dynamic>>>(
          costFiltersValue,
          (value) => Input.encodeList<BudgetCostFilter, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final costTypesValue = costTypes;
    if (costTypesValue != null) {
      map['costTypes'] =
          Input.mapOptionalInputValue<BudgetCostTypes, Map<String, dynamic>>(
              costTypesValue, (value) => value.toMap());
    }
    final filterExpressionValue = filterExpression;
    if (filterExpressionValue != null) {
      map['filterExpression'] = Input.mapOptionalInputValue<
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
      map['notifications'] = Input.mapOptionalInputValue<
              List<BudgetNotification>, List<Map<String, dynamic>>>(
          notificationsValue,
          (value) => Input.encodeList<BudgetNotification, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final plannedLimitsValue = plannedLimits;
    if (plannedLimitsValue != null) {
      map['plannedLimits'] = Input.mapOptionalInputValue<
              List<BudgetPlannedLimit>, List<Map<String, dynamic>>>(
          plannedLimitsValue,
          (value) => Input.encodeList<BudgetPlannedLimit, Map<String, dynamic>>(
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
      accountId: Input.asOptionalInput<String>(map['accountId']),
      autoAdjustData:
          Input.asOptionalInput<BudgetAutoAdjustData>(map['autoAdjustData']),
      billingViewArn: Input.asOptionalInput<String>(map['billingViewArn']),
      budgetType: Input.asInput<String>(map['budgetType']),
      costFilters:
          Input.asOptionalInput<List<BudgetCostFilter>>(map['costFilters']),
      costTypes: Input.asOptionalInput<BudgetCostTypes>(map['costTypes']),
      filterExpression: Input.asOptionalInput<BudgetFilterExpression>(
          map['filterExpression']),
      limitAmount: Input.asOptionalInput<String>(map['limitAmount']),
      limitUnit: Input.asOptionalInput<String>(map['limitUnit']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      notifications:
          Input.asOptionalInput<List<BudgetNotification>>(map['notifications']),
      plannedLimits:
          Input.asOptionalInput<List<BudgetPlannedLimit>>(map['plannedLimits']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timePeriodEnd: Input.asOptionalInput<String>(map['timePeriodEnd']),
      timePeriodStart: Input.asOptionalInput<String>(map['timePeriodStart']),
      timeUnit: Input.asInput<String>(map['timeUnit']),
    );
  }
}
