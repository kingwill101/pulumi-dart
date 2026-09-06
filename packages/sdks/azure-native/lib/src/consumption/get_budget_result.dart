// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_filter_response.dart';
import 'budget_time_period_response.dart';
import 'current_spend_response.dart';
import 'forecast_spend_response.dart';
import 'notification_response.dart';
import 'system_data_response.dart';

/// Result data returned by getBudget.
class GetBudgetResult {
  /// The total amount of cost to track with the budget
  final double? amount;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The category of the budget, whether the budget tracks cost or usage.
  final String? category;
  /// The current amount of cost which is being tracked for a budget.
  final CurrentSpendResponse? currentSpend;
  /// eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  final String? eTag;
  /// May be used to filter budgets by user-specified dimensions and/or tags.
  final BudgetFilterResponse? filter;
  /// The forecasted cost which is being tracked for a budget.
  final ForecastSpendResponse? forecastSpend;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// Dictionary of notifications associated with the budget. Budget can have up to five notifications.
  final Map<String, NotificationResponse>? notifications;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The time covered by a budget. Tracking of the amount will be reset based on the time grain. BillingMonth, BillingQuarter, and BillingAnnual are only supported by WD customers
  final String? timeGrain;
  /// Has start and end date of the budget. The start date must be first of the month and should be less than the end date. Budget start date must be on or after June 1, 2017. Future start date should not be more than twelve months. Past start date should  be selected within the timegrain period. There are no restrictions on the end date.
  final BudgetTimePeriodResponse? timePeriod;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetBudgetResult].
  /// [amount] The total amount of cost to track with the budget
  /// [azureApiVersion] The Azure API version of the resource.
  /// [category] The category of the budget, whether the budget tracks cost or usage.
  /// [currentSpend] The current amount of cost which is being tracked for a budget.
  /// [eTag] eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  /// [filter] May be used to filter budgets by user-specified dimensions and/or tags.
  /// [forecastSpend] The forecasted cost which is being tracked for a budget.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [notifications] Dictionary of notifications associated with the budget. Budget can have up to five notifications.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [timeGrain] The time covered by a budget. Tracking of the amount will be reset based on the time grain. BillingMonth, BillingQuarter, and BillingAnnual are only supported by WD customers
  /// [timePeriod] Has start and end date of the budget. The start date must be first of the month and should be less than the end date. Budget start date must be on or after June 1, 2017. Future start date should not be more than twelve months. Past start date should  be selected within the timegrain period. There are no restrictions on the end date.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetBudgetResult({
    this.amount,
    this.azureApiVersion,
    this.category,
    this.currentSpend,
    this.eTag,
    this.filter,
    this.forecastSpend,
    this.id,
    this.name,
    this.notifications,
    this.systemData,
    this.timeGrain,
    this.timePeriod,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'azureApiVersion': ?azureApiVersion,
      'category': ?category,
      'currentSpend': ?currentSpend?.toMap(),
      'eTag': ?eTag,
      'filter': ?filter?.toMap(),
      'forecastSpend': ?forecastSpend?.toMap(),
      'id': ?id,
      'name': ?name,
      'notifications': ?(() { final guardedValue = notifications; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<NotificationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'timeGrain': ?timeGrain,
      'timePeriod': ?timePeriod?.toMap(),
      'type': ?type,
    };
  }

  factory GetBudgetResult.fromMap(Map<String, dynamic> map) {
    return GetBudgetResult(
      amount: (() { final guardedValue = map['amount']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return guardedValue as String; })(),
      currentSpend: (() { final guardedValue = map['currentSpend']; if (guardedValue == null) return null; return CurrentSpendResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return BudgetFilterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      forecastSpend: (() { final guardedValue = map['forecastSpend']; if (guardedValue == null) return null; return ForecastSpendResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<NotificationResponse>(guardedValue, (value) => NotificationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      timeGrain: (() { final guardedValue = map['timeGrain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timePeriod: (() { final guardedValue = map['timePeriod']; if (guardedValue == null) return null; return BudgetTimePeriodResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
