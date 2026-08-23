// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_auto_adjust_data.dart';
import 'budget_cost_filter.dart';
import 'budget_cost_types.dart';
import 'budget_filter_expression.dart';
import 'budget_notification.dart';
import 'budget_planned_limit.dart';

/// Input properties used for looking up and filtering Budget resources.
class BudgetState {
  /// The ID of the target account for budget. Will use current user's accountId by default if omitted.
  final pulumi.Input<String>? accountId;
  /// The ARN of the budget.
  final pulumi.Input<String>? arn;
  /// Object containing AutoAdjustData which determines the budget amount for an auto-adjusting budget.
  final pulumi.Input<BudgetAutoAdjustData>? autoAdjustData;
  /// ARN of the billing view.
  final pulumi.Input<String>? billingViewArn;
  /// Whether this budget tracks monetary cost or usage.
  final pulumi.Input<String>? budgetType;
  /// A list of CostFilter name/values pair to apply to budget. Conflicts with `filterExpression`.
  final pulumi.Input<List<BudgetCostFilter>>? costFilters;
  /// Object containing CostTypes The types of cost included in a budget, such as tax and subscriptions.
  final pulumi.Input<BudgetCostTypes>? costTypes;
  /// Object containing Filter Expression to apply to budget. Conflicts with `costFilter` and requires `metrics`.
  final pulumi.Input<BudgetFilterExpression>? filterExpression;
  /// The amount of cost or usage being measured for a budget.
  final pulumi.Input<String>? limitAmount;
  /// The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB. See [Spend](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/data-type-spend.html) documentation.
  final pulumi.Input<String>? limitUnit;
  /// List containing definition for how the budget data is aggregated. Conflicts with `costTypes` and requires `filterExpression`.
  final pulumi.Input<String>? metrics;
  /// The name of a budget. Unique within accounts.
  final pulumi.Input<String>? name;
  /// The prefix of the name of a budget. Unique within accounts.
  final pulumi.Input<String>? namePrefix;
  /// Object containing Budget Notifications. Can be used multiple times to define more than one budget notification.
  final pulumi.Input<List<BudgetNotification>>? notifications;
  /// Object containing Planned Budget Limits. Can be used multiple times to plan more than one budget limit. See [PlannedBudgetLimits](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_Budget.html#awscostmanagement-Type-budgets_Budget-PlannedBudgetLimits) documentation.
  final pulumi.Input<List<BudgetPlannedLimit>>? plannedLimits;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
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
  final pulumi.Input<String>? timeUnit;

  /// Creates a new [BudgetState].
  /// [accountId] The ID of the target account for budget. Will use current user's accountId by default if omitted.
  /// [arn] The ARN of the budget.
  /// [autoAdjustData] Object containing AutoAdjustData which determines the budget amount for an auto-adjusting budget.
  /// [billingViewArn] ARN of the billing view.
  /// [budgetType] Whether this budget tracks monetary cost or usage.
  /// [costFilters] A list of CostFilter name/values pair to apply to budget. Conflicts with `filterExpression`.
  /// [costTypes] Object containing CostTypes The types of cost included in a budget, such as tax and subscriptions.
  /// [filterExpression] Object containing Filter Expression to apply to budget. Conflicts with `costFilter` and requires `metrics`.
  /// [limitAmount] The amount of cost or usage being measured for a budget.
  /// [limitUnit] The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB. See [Spend](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/data-type-spend.html) documentation.
  /// [metrics] List containing definition for how the budget data is aggregated. Conflicts with `costTypes` and requires `filterExpression`.
  /// [name] The name of a budget. Unique within accounts.
  /// [namePrefix] The prefix of the name of a budget. Unique within accounts.
  /// [notifications] Object containing Budget Notifications. Can be used multiple times to define more than one budget notification.
  /// [plannedLimits] Object containing Planned Budget Limits. Can be used multiple times to plan more than one budget limit. See [PlannedBudgetLimits](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_Budget.html#awscostmanagement-Type-budgets_Budget-PlannedBudgetLimits) documentation.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timePeriodEnd] The end of the time period covered by the budget. There are no restrictions on the end date. Format: `2017-01-01_12:00`.
  /// [timePeriodStart] The start of the time period covered by the budget. If you don't specify a start date, AWS defaults to the start of your chosen time period. The start date must come before the end date. Format: `2017-01-01_12:00`.
  /// [timeUnit] The length of time until a budget resets the actual and forecasted spend. Valid values: `MONTHLY`, `QUARTERLY`, `ANNUALLY`, and `DAILY`.
  const BudgetState({
    this.accountId,
    this.arn,
    this.autoAdjustData,
    this.billingViewArn,
    this.budgetType,
    this.costFilters,
    this.costTypes,
    this.filterExpression,
    this.limitAmount,
    this.limitUnit,
    this.metrics,
    this.name,
    this.namePrefix,
    this.notifications,
    this.plannedLimits,
    this.tags,
    this.tagsAll,
    this.timePeriodEnd,
    this.timePeriodStart,
    this.timeUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'arn': ?arn,
      'autoAdjustData': ?pulumi.Input.mapOptionalInputValue<BudgetAutoAdjustData, Map<String, dynamic>>(autoAdjustData, (value) => value.toMap()),
      'billingViewArn': ?billingViewArn,
      'budgetType': ?budgetType,
      'costFilters': ?pulumi.Input.mapOptionalInputValue<List<BudgetCostFilter>, List<Map<String, dynamic>>>(costFilters, (value) => pulumi.Input.encodeList<BudgetCostFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'costTypes': ?pulumi.Input.mapOptionalInputValue<BudgetCostTypes, Map<String, dynamic>>(costTypes, (value) => value.toMap()),
      'filterExpression': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpression, Map<String, dynamic>>(filterExpression, (value) => value.toMap()),
      'limitAmount': ?limitAmount,
      'limitUnit': ?limitUnit,
      'metrics': ?metrics,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'notifications': ?pulumi.Input.mapOptionalInputValue<List<BudgetNotification>, List<Map<String, dynamic>>>(notifications, (value) => pulumi.Input.encodeList<BudgetNotification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'plannedLimits': ?pulumi.Input.mapOptionalInputValue<List<BudgetPlannedLimit>, List<Map<String, dynamic>>>(plannedLimits, (value) => pulumi.Input.encodeList<BudgetPlannedLimit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timePeriodEnd': ?timePeriodEnd,
      'timePeriodStart': ?timePeriodStart,
      'timeUnit': ?timeUnit,
    };
  }

  factory BudgetState.fromMap(Map<String, dynamic> map) {
    return BudgetState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoAdjustData: (() { final guardedValue = map['autoAdjustData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetAutoAdjustData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      billingViewArn: (() { final guardedValue = map['billingViewArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      budgetType: (() { final guardedValue = map['budgetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      costFilters: (() { final guardedValue = map['costFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BudgetCostFilter>(guardedValue, (value) => BudgetCostFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      costTypes: (() { final guardedValue = map['costTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetCostTypes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filterExpression: (() { final guardedValue = map['filterExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetFilterExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      limitAmount: (() { final guardedValue = map['limitAmount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      limitUnit: (() { final guardedValue = map['limitUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BudgetNotification>(guardedValue, (value) => BudgetNotification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      plannedLimits: (() { final guardedValue = map['plannedLimits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BudgetPlannedLimit>(guardedValue, (value) => BudgetPlannedLimit.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timePeriodEnd: (() { final guardedValue = map['timePeriodEnd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timePeriodStart: (() { final guardedValue = map['timePeriodStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeUnit: (() { final guardedValue = map['timeUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
