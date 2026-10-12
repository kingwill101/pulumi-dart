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
  final String? accountId;
  /// ARN of the budget.
  final String? arn;
  /// Object that determines the budget amount for an auto-adjusting budget. See `autoAdjustData` Block for details.
  final List<GetBudgetAutoAdjustData>? autoAdjustDatas;
  /// ARN of the billing view.
  final String? billingViewArn;
  /// Whether the budget has been exceeded.
  final bool? budgetExceeded;
  /// Amount of cost, usage, RI utilization, RI coverage, Savings Plans utilization, or Savings Plans coverage tracked by the budget. See `budgetLimit` Block for details.
  final List<GetBudgetBudgetLimit>? budgetLimits;
  /// Whether the budget tracks monetary cost or usage.
  final String? budgetType;
  /// Spend objects associated with the budget. See `calculatedSpend` Block for details.
  final List<GetBudgetCalculatedSpend>? calculatedSpends;
  /// Cost filters applied to the budget. See `costFilter` Block for details.
  final List<GetBudgetCostFilter>? costFilters;
  /// Types of cost included in the budget. See `costTypes` Block for details.
  final List<GetBudgetCostType>? costTypes;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Name of the cost filter.
  final String? name;
  final String? namePrefix;
  /// Notifications associated with the budget. See `notification` Block for details.
  final List<GetBudgetNotification>? notifications;
  /// Budget limits planned for future periods. See `plannedLimit` Block for details.
  final List<GetBudgetPlannedLimit>? plannedLimits;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;
  /// End of the time period covered by the budget. Format: `2017-01-01_12:00`.
  final String? timePeriodEnd;
  /// Start of the time period covered by the budget. Format: `2017-01-01_12:00`.
  final String? timePeriodStart;
  /// Length of time until the budget resets the actual and forecasted spend. Valid values: `MONTHLY`, `QUARTERLY`, `ANNUALLY`, and `DAILY`.
  final String? timeUnit;

  /// Creates a new [GetBudgetResult].
  /// [accountId] Optional.
  /// [arn] ARN of the budget.
  /// [autoAdjustDatas] Object that determines the budget amount for an auto-adjusting budget. See `autoAdjustData` Block for details.
  /// [billingViewArn] ARN of the billing view.
  /// [budgetExceeded] Whether the budget has been exceeded.
  /// [budgetLimits] Amount of cost, usage, RI utilization, RI coverage, Savings Plans utilization, or Savings Plans coverage tracked by the budget. See `budgetLimit` Block for details.
  /// [budgetType] Whether the budget tracks monetary cost or usage.
  /// [calculatedSpends] Spend objects associated with the budget. See `calculatedSpend` Block for details.
  /// [costFilters] Cost filters applied to the budget. See `costFilter` Block for details.
  /// [costTypes] Types of cost included in the budget. See `costTypes` Block for details.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the cost filter.
  /// [namePrefix] Optional.
  /// [notifications] Notifications associated with the budget. See `notification` Block for details.
  /// [plannedLimits] Budget limits planned for future periods. See `plannedLimit` Block for details.
  /// [tags] Map of tags assigned to the resource.
  /// [timePeriodEnd] End of the time period covered by the budget. Format: `2017-01-01_12:00`.
  /// [timePeriodStart] Start of the time period covered by the budget. Format: `2017-01-01_12:00`.
  /// [timeUnit] Length of time until the budget resets the actual and forecasted spend. Valid values: `MONTHLY`, `QUARTERLY`, `ANNUALLY`, and `DAILY`.
  const GetBudgetResult({
    this.accountId,
    this.arn,
    this.autoAdjustDatas,
    this.billingViewArn,
    this.budgetExceeded,
    this.budgetLimits,
    this.budgetType,
    this.calculatedSpends,
    this.costFilters,
    this.costTypes,
    this.id,
    this.name,
    this.namePrefix,
    this.notifications,
    this.plannedLimits,
    this.tags,
    this.timePeriodEnd,
    this.timePeriodStart,
    this.timeUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'arn': ?arn,
      'autoAdjustDatas': ?(() { final guardedValue = autoAdjustDatas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBudgetAutoAdjustData, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'billingViewArn': ?billingViewArn,
      'budgetExceeded': ?budgetExceeded,
      'budgetLimits': ?(() { final guardedValue = budgetLimits; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBudgetBudgetLimit, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'budgetType': ?budgetType,
      'calculatedSpends': ?(() { final guardedValue = calculatedSpends; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBudgetCalculatedSpend, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'costFilters': ?(() { final guardedValue = costFilters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBudgetCostFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'costTypes': ?(() { final guardedValue = costTypes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBudgetCostType, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'notifications': ?(() { final guardedValue = notifications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBudgetNotification, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'plannedLimits': ?(() { final guardedValue = plannedLimits; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBudgetPlannedLimit, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'timePeriodEnd': ?timePeriodEnd,
      'timePeriodStart': ?timePeriodStart,
      'timeUnit': ?timeUnit,
    };
  }

  factory GetBudgetResult.fromMap(Map<String, dynamic> map) {
    return GetBudgetResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoAdjustDatas: (() { final guardedValue = map['autoAdjustDatas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBudgetAutoAdjustData>(guardedValue, (value) => GetBudgetAutoAdjustData.fromMap((value as Map).cast<String, dynamic>())); })(),
      billingViewArn: (() { final guardedValue = map['billingViewArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      budgetExceeded: (() { final guardedValue = map['budgetExceeded']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      budgetLimits: (() { final guardedValue = map['budgetLimits']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBudgetBudgetLimit>(guardedValue, (value) => GetBudgetBudgetLimit.fromMap((value as Map).cast<String, dynamic>())); })(),
      budgetType: (() { final guardedValue = map['budgetType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      calculatedSpends: (() { final guardedValue = map['calculatedSpends']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBudgetCalculatedSpend>(guardedValue, (value) => GetBudgetCalculatedSpend.fromMap((value as Map).cast<String, dynamic>())); })(),
      costFilters: (() { final guardedValue = map['costFilters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBudgetCostFilter>(guardedValue, (value) => GetBudgetCostFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      costTypes: (() { final guardedValue = map['costTypes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBudgetCostType>(guardedValue, (value) => GetBudgetCostType.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBudgetNotification>(guardedValue, (value) => GetBudgetNotification.fromMap((value as Map).cast<String, dynamic>())); })(),
      plannedLimits: (() { final guardedValue = map['plannedLimits']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBudgetPlannedLimit>(guardedValue, (value) => GetBudgetPlannedLimit.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timePeriodEnd: (() { final guardedValue = map['timePeriodEnd']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timePeriodStart: (() { final guardedValue = map['timePeriodStart']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeUnit: (() { final guardedValue = map['timeUnit']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
