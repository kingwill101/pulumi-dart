// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_budget_auto_adjust_data.dart';
import 'get_budget_budget_limit.dart';
import 'get_budget_calculated_spend.dart';
import 'get_budget_cost_filter.dart';
import 'get_budget_cost_type.dart';
import 'get_budget_notification.dart';
import 'get_budget_planned_limit.dart';

/// Result data returned by getBudget.
class GetBudgetResult {
  final String accountId;
  final String arn;
  /// Object containing [AutoAdjustData] which determines the budget amount for an auto-adjusting budget.
  final List<GetBudgetAutoAdjustData> autoAdjustDatas;
  /// ARN of the billing view.
  final String billingViewArn;
  /// Boolean indicating whether this budget has been exceeded.
  final bool budgetExceeded;
  /// The total amount of cost, usage, RI utilization, RI coverage, Savings Plans utilization, or Savings Plans coverage that you want to track with your budget. Contains object Spend.
  final List<GetBudgetBudgetLimit> budgetLimits;
  /// Whether this budget tracks monetary cost or usage.
  final String budgetType;
  /// The spend objects that are associated with this budget. The actualSpend tracks how much you've used, cost, usage, RI units, or Savings Plans units and the forecastedSpend tracks how much that you're predicted to spend based on your historical usage profile.
  final List<GetBudgetCalculatedSpend> calculatedSpends;
  /// A list of CostFilter name/values pair to apply to budget.
  final List<GetBudgetCostFilter> costFilters;
  /// Object containing CostTypes The types of cost included in a budget, such as tax and subscriptions.
  final List<GetBudgetCostType> costTypes;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String? namePrefix;
  /// Object containing Budget Notifications. Can be used multiple times to define more than one budget notification.
  final List<GetBudgetNotification> notifications;
  /// Object containing Planned Budget Limits. Can be used multiple times to plan more than one budget limit. See [PlannedBudgetLimits](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_Budget.html#awscostmanagement-Type-budgets_Budget-PlannedBudgetLimits) documentation.
  final List<GetBudgetPlannedLimit> plannedLimits;
  /// Map of tags assigned to the resource.
  final Map<String, String> tags;
  /// The end of the time period covered by the budget. There are no restrictions on the end date. Format: `2017-01-01_12:00`.
  final String timePeriodEnd;
  /// The start of the time period covered by the budget. If you don't specify a start date, AWS defaults to the start of your chosen time period. The start date must come before the end date. Format: `2017-01-01_12:00`.
  final String timePeriodStart;
  /// The length of time until a budget resets the actual and forecasted spend. Valid values: `MONTHLY`, `QUARTERLY`, `ANNUALLY`, and `DAILY`.
  final String timeUnit;

  /// Creates a new [GetBudgetResult].
  /// [accountId] Required.
  /// [arn] Required.
  /// [autoAdjustDatas] Object containing [AutoAdjustData] which determines the budget amount for an auto-adjusting budget.
  /// [billingViewArn] ARN of the billing view.
  /// [budgetExceeded] Boolean indicating whether this budget has been exceeded.
  /// [budgetLimits] The total amount of cost, usage, RI utilization, RI coverage, Savings Plans utilization, or Savings Plans coverage that you want to track with your budget. Contains object Spend.
  /// [budgetType] Whether this budget tracks monetary cost or usage.
  /// [calculatedSpends] The spend objects that are associated with this budget. The actualSpend tracks how much you've used, cost, usage, RI units, or Savings Plans units and the forecastedSpend tracks how much that you're predicted to spend based on your historical usage profile.
  /// [costFilters] A list of CostFilter name/values pair to apply to budget.
  /// [costTypes] Object containing CostTypes The types of cost included in a budget, such as tax and subscriptions.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [namePrefix] Optional.
  /// [notifications] Object containing Budget Notifications. Can be used multiple times to define more than one budget notification.
  /// [plannedLimits] Object containing Planned Budget Limits. Can be used multiple times to plan more than one budget limit. See [PlannedBudgetLimits](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_Budget.html#awscostmanagement-Type-budgets_Budget-PlannedBudgetLimits) documentation.
  /// [tags] Map of tags assigned to the resource.
  /// [timePeriodEnd] The end of the time period covered by the budget. There are no restrictions on the end date. Format: `2017-01-01_12:00`.
  /// [timePeriodStart] The start of the time period covered by the budget. If you don't specify a start date, AWS defaults to the start of your chosen time period. The start date must come before the end date. Format: `2017-01-01_12:00`.
  /// [timeUnit] The length of time until a budget resets the actual and forecasted spend. Valid values: `MONTHLY`, `QUARTERLY`, `ANNUALLY`, and `DAILY`.
  GetBudgetResult({
    required this.accountId,
    required this.arn,
    required this.autoAdjustDatas,
    required this.billingViewArn,
    required this.budgetExceeded,
    required this.budgetLimits,
    required this.budgetType,
    required this.calculatedSpends,
    required this.costFilters,
    required this.costTypes,
    required this.id,
    required this.name,
    this.namePrefix,
    required this.notifications,
    required this.plannedLimits,
    required this.tags,
    required this.timePeriodEnd,
    required this.timePeriodStart,
    required this.timeUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'arn': arn,
      'autoAdjustDatas': pulumi.Input.encodeList<GetBudgetAutoAdjustData, Map<String, dynamic>>(autoAdjustDatas, (value) => value.toMap()),
      'billingViewArn': billingViewArn,
      'budgetExceeded': budgetExceeded,
      'budgetLimits': pulumi.Input.encodeList<GetBudgetBudgetLimit, Map<String, dynamic>>(budgetLimits, (value) => value.toMap()),
      'budgetType': budgetType,
      'calculatedSpends': pulumi.Input.encodeList<GetBudgetCalculatedSpend, Map<String, dynamic>>(calculatedSpends, (value) => value.toMap()),
      'costFilters': pulumi.Input.encodeList<GetBudgetCostFilter, Map<String, dynamic>>(costFilters, (value) => value.toMap()),
      'costTypes': pulumi.Input.encodeList<GetBudgetCostType, Map<String, dynamic>>(costTypes, (value) => value.toMap()),
      'id': id,
      'name': name,
      'namePrefix': ?namePrefix,
      'notifications': pulumi.Input.encodeList<GetBudgetNotification, Map<String, dynamic>>(notifications, (value) => value.toMap()),
      'plannedLimits': pulumi.Input.encodeList<GetBudgetPlannedLimit, Map<String, dynamic>>(plannedLimits, (value) => value.toMap()),
      'tags': tags,
      'timePeriodEnd': timePeriodEnd,
      'timePeriodStart': timePeriodStart,
      'timeUnit': timeUnit,
    };
  }

  factory GetBudgetResult.fromMap(Map<String, dynamic> map) {
    return GetBudgetResult(
      accountId: map['accountId'] as String,
      arn: map['arn'] as String,
      autoAdjustDatas: pulumi.Input.decodeList<GetBudgetAutoAdjustData>(map['autoAdjustDatas'], (value) => GetBudgetAutoAdjustData.fromMap((value as Map).cast<String, dynamic>())),
      billingViewArn: map['billingViewArn'] as String,
      budgetExceeded: map['budgetExceeded'] as bool,
      budgetLimits: pulumi.Input.decodeList<GetBudgetBudgetLimit>(map['budgetLimits'], (value) => GetBudgetBudgetLimit.fromMap((value as Map).cast<String, dynamic>())),
      budgetType: map['budgetType'] as String,
      calculatedSpends: pulumi.Input.decodeList<GetBudgetCalculatedSpend>(map['calculatedSpends'], (value) => GetBudgetCalculatedSpend.fromMap((value as Map).cast<String, dynamic>())),
      costFilters: pulumi.Input.decodeList<GetBudgetCostFilter>(map['costFilters'], (value) => GetBudgetCostFilter.fromMap((value as Map).cast<String, dynamic>())),
      costTypes: pulumi.Input.decodeList<GetBudgetCostType>(map['costTypes'], (value) => GetBudgetCostType.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      namePrefix: map['namePrefix'] == null ? null : map['namePrefix'] as String,
      notifications: pulumi.Input.decodeList<GetBudgetNotification>(map['notifications'], (value) => GetBudgetNotification.fromMap((value as Map).cast<String, dynamic>())),
      plannedLimits: pulumi.Input.decodeList<GetBudgetPlannedLimit>(map['plannedLimits'], (value) => GetBudgetPlannedLimit.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      timePeriodEnd: map['timePeriodEnd'] as String,
      timePeriodStart: map['timePeriodStart'] as String,
      timeUnit: map['timeUnit'] as String,
    );
  }
}

