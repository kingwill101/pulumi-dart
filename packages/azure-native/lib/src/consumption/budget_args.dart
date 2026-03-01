// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_filter.dart';
import 'budget_time_period.dart';
import 'notification.dart';

/// {@template pulumi_consumption_budget_args_doc}
/// The set of arguments for Budget.
/// {@endtemplate}
/// {@macro pulumi_consumption_budget_args_doc}
class BudgetArgs {
  /// The total amount of cost to track with the budget
  final pulumi.Input<double> amount;
  /// Budget Name.
  final pulumi.Input<String>? budgetName;
  /// The category of the budget, whether the budget tracks cost or usage.
  final pulumi.Input<String> category;
  /// eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  final pulumi.Input<String>? eTag;
  /// May be used to filter budgets by user-specified dimensions and/or tags.
  final pulumi.Input<BudgetFilter>? filter;
  /// Dictionary of notifications associated with the budget. Budget can have up to five notifications.
  final pulumi.Input<Map<String, Notification>>? notifications;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> scope;
  /// The time covered by a budget. Tracking of the amount will be reset based on the time grain. BillingMonth, BillingQuarter, and BillingAnnual are only supported by WD customers
  final pulumi.Input<String> timeGrain;
  /// Has start and end date of the budget. The start date must be first of the month and should be less than the end date. Budget start date must be on or after June 1, 2017. Future start date should not be more than twelve months. Past start date should  be selected within the timegrain period. There are no restrictions on the end date.
  final pulumi.Input<BudgetTimePeriod> timePeriod;

  /// Creates a new [BudgetArgs].
  /// [amount] The total amount of cost to track with the budget
  /// [budgetName] Budget Name.
  /// [category] The category of the budget, whether the budget tracks cost or usage.
  /// [eTag] eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  /// [filter] May be used to filter budgets by user-specified dimensions and/or tags.
  /// [notifications] Dictionary of notifications associated with the budget. Budget can have up to five notifications.
  /// [scope] The fully qualified Azure Resource manager identifier of the resource.
  /// [timeGrain] The time covered by a budget. Tracking of the amount will be reset based on the time grain. BillingMonth, BillingQuarter, and BillingAnnual are only supported by WD customers
  /// [timePeriod] Has start and end date of the budget. The start date must be first of the month and should be less than the end date. Budget start date must be on or after June 1, 2017. Future start date should not be more than twelve months. Past start date should  be selected within the timegrain period. There are no restrictions on the end date.
  BudgetArgs({
    required double amount,
    String? budgetName,
    required String category,
    String? eTag,
    BudgetFilter? filter,
    Map<String, Notification>? notifications,
    required String scope,
    required String timeGrain,
    required BudgetTimePeriod timePeriod,
  }) :
      amount = pulumi.Input.asInput<double>(amount),
      budgetName = pulumi.Input.asOptionalInput<String>(budgetName),
      category = pulumi.Input.asInput<String>(category),
      eTag = pulumi.Input.asOptionalInput<String>(eTag),
      filter = pulumi.Input.asOptionalInput<BudgetFilter>(filter),
      notifications = pulumi.Input.asOptionalInput<Map<String, Notification>>(notifications),
      scope = pulumi.Input.asInput<String>(scope),
      timeGrain = pulumi.Input.asInput<String>(timeGrain),
      timePeriod = pulumi.Input.asInput<BudgetTimePeriod>(timePeriod);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'budgetName': ?budgetName,
      'category': category,
      'eTag': ?eTag,
      'filter': ?pulumi.Input.mapOptionalInputValue<BudgetFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'notifications': ?pulumi.Input.mapOptionalInputValue<Map<String, Notification>, Map<String, Map<String, dynamic>>>(notifications, (value) => pulumi.Input.encodeMapValues<Notification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scope': scope,
      'timeGrain': timeGrain,
      'timePeriod': pulumi.Input.mapInputValue<BudgetTimePeriod, Map<String, dynamic>>(timePeriod, (value) => value.toMap()),
    };
  }

  factory BudgetArgs.fromMap(Map<String, dynamic> map) {
    return BudgetArgs(
      amount: map['amount'] as double,
      budgetName: map['budgetName'] == null ? null : map['budgetName'] as String,
      category: map['category'] as String,
      eTag: map['eTag'] == null ? null : map['eTag'] as String,
      filter: map['filter'] == null ? null : BudgetFilter.fromMap((map['filter'] as Map).cast<String, dynamic>()),
      notifications: map['notifications'] == null ? null : pulumi.Input.decodeMapValues<Notification>(map['notifications'], (value) => Notification.fromMap((value as Map).cast<String, dynamic>())),
      scope: map['scope'] as String,
      timeGrain: map['timeGrain'] as String,
      timePeriod: BudgetTimePeriod.fromMap((map['timePeriod'] as Map).cast<String, dynamic>()),
    );
  }
}

