// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_filter_response.dart';
import 'budget_time_period_response.dart';
import 'current_spend_response.dart';
import 'forecast_spend_response.dart';
import 'notification_response.dart';

/// Result data returned by getBudget.
class GetBudgetResult {
  /// The total amount of cost to track with the budget.
  ///
  /// Supported for CategoryType(s): Cost.
  ///
  /// Required for CategoryType(s): Cost.
  final double? amount;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The category of the budget.
  /// - 'Cost' defines a Budget.
  /// - 'ReservationUtilization' defines a Reservation Utilization Alert Rule.
  final String category;
  /// The current amount of cost which is being tracked for a budget.
  ///
  /// Supported for CategoryType(s): Cost.
  final CurrentSpendResponse currentSpend;
  /// eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  final String? eTag;
  /// May be used to filter budgets by user-specified dimensions and/or tags.
  ///
  /// Supported for CategoryType(s): Cost, ReservationUtilization.
  final BudgetFilterResponse? filter;
  /// The forecasted cost which is being tracked for a budget.
  ///
  /// Supported for CategoryType(s): Cost.
  final ForecastSpendResponse forecastSpend;
  /// Resource Id.
  final String id;
  /// Resource name.
  final String name;
  /// Dictionary of notifications associated with the budget.
  ///
  /// Supported for CategoryType(s): Cost, ReservationUtilization.
  ///
  /// - Constraints for **CategoryType: Cost** - Budget can have up to 5 notifications with thresholdType: Actual and 5 notifications with thresholdType: Forecasted.
  /// - Constraints for **CategoryType: ReservationUtilization** - Only one notification allowed. thresholdType is not applicable.
  final Map<String, NotificationResponse>? notifications;
  /// The time covered by a budget. Tracking of the amount will be reset based on the time grain.
  ///
  /// Supported for CategoryType(s): Cost, ReservationUtilization.
  ///
  /// Supported timeGrainTypes for **CategoryType: Cost**
  ///
  /// - Monthly
  /// - Quarterly
  /// - Annually
  /// - BillingMonth*
  /// - BillingQuarter*
  /// - BillingAnnual*
  ///
  /// *only supported for Web Direct customers.
  ///
  /// Supported timeGrainTypes for **CategoryType: ReservationUtilization**
  /// - Last7Days
  /// - Last30Days
  ///
  /// Required for CategoryType(s): Cost, ReservationUtilization.
  final String timeGrain;
  /// The time period that defines the active period of the budget. The budget will evaluate data on or after the startDate and will expire on the endDate.
  ///
  /// Supported for CategoryType(s): Cost, ReservationUtilization.
  ///
  /// Required for CategoryType(s): Cost, ReservationUtilization.
  final BudgetTimePeriodResponse timePeriod;
  /// Resource type.
  final String type;

  /// Creates a new [GetBudgetResult].
  /// [amount] The total amount of cost to track with the budget.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [category] The category of the budget.
  /// [currentSpend] The current amount of cost which is being tracked for a budget.
  /// [eTag] eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  /// [filter] May be used to filter budgets by user-specified dimensions and/or tags.
  /// [forecastSpend] The forecasted cost which is being tracked for a budget.
  /// [id] Resource Id.
  /// [name] Resource name.
  /// [notifications] Dictionary of notifications associated with the budget.
  /// [timeGrain] The time covered by a budget. Tracking of the amount will be reset based on the time grain.
  /// [timePeriod] The time period that defines the active period of the budget. The budget will evaluate data on or after the startDate and will expire on the endDate.
  /// [type] Resource type.
  GetBudgetResult({
    this.amount,
    required this.azureApiVersion,
    required this.category,
    required this.currentSpend,
    this.eTag,
    this.filter,
    required this.forecastSpend,
    required this.id,
    required this.name,
    this.notifications,
    required this.timeGrain,
    required this.timePeriod,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'azureApiVersion': azureApiVersion,
      'category': category,
      'currentSpend': currentSpend.toMap(),
      'eTag': ?eTag,
      'filter': ?filter?.toMap(),
      'forecastSpend': forecastSpend.toMap(),
      'id': id,
      'name': name,
      'notifications': ?(() { final guardedValue = notifications; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<NotificationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'timeGrain': timeGrain,
      'timePeriod': timePeriod.toMap(),
      'type': type,
    };
  }

  factory GetBudgetResult.fromMap(Map<String, dynamic> map) {
    return GetBudgetResult(
      amount: (() { final guardedValue = map['amount']; if (guardedValue == null) return null; return guardedValue as double; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      category: map['category'] as String,
      currentSpend: CurrentSpendResponse.fromMap((map['currentSpend']! as Map).cast<String, dynamic>()),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return BudgetFilterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      forecastSpend: ForecastSpendResponse.fromMap((map['forecastSpend']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      name: map['name'] as String,
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<NotificationResponse>(guardedValue, (value) => NotificationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      timeGrain: map['timeGrain'] as String,
      timePeriod: BudgetTimePeriodResponse.fromMap((map['timePeriod']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

